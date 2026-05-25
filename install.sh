#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "================================"
echo "  dotfiles install.sh"
echo "================================"
echo ""

# ─── Renkler ───────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info()    { echo -e "${GREEN}[INFO]${NC} $1"; }
warn()    { echo -e "${YELLOW}[WARN]${NC} $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; }

# ─── Adım seçimi ───────────────────────────────────────────
echo "Ne yapmak istiyorsun?"
echo "  1) Hepsini kur (native + flatpak + config + fisher)"
echo "  2) Sadece native uygulamaları kur"
echo "  3) Sadece flatpak uygulamaları kur"
echo "  4) Sadece config dosyalarını kopyala"
echo "  5) Sadece VSCodium eklentilerini kur"
echo "  6) Sadece fisher + fish pluginleri kur"
echo ""
read -rp "Seçim [1-6]: " CHOICE
echo ""

# ─── Native uygulamalar ────────────────────────────────────
install_native() {
    info "Native uygulamalar kuruluyor (zypper)..."
    sudo zypper install -y \
        bleachbit btop cava chromium docker docker-compose earlyoom \
        easyeffects fastfetch fish flatpak gamemode gamescope git \
        gnome-boxes gnome-builder helvum java-17-openjdk java-21-openjdk \
        kitty lua lutris mangohud nodejs obs-studio opi os-prober \
        starship steam vlc waypipe wireshark

    info "opi ile ek uygulamalar kuruluyor..."
    opi librewolf antigravity vscodium codecs

    info "Docker servisi etkinleştiriliyor..."
    sudo systemctl enable --now docker
    sudo usermod -aG docker "$USER"
    warn "Docker grubu için yeniden giriş yapman gerekebilir."

    info "Native uygulamalar kuruldu."
}

# ─── Flatpak uygulamaları ──────────────────────────────────
install_flatpak() {
    info "Flatpak uygulamaları kuruluyor..."
    flatpak install -y \
        app.ytmdesktop.ytmdesktop \
        app.zen_browser.zen \
        be.alexandervanhee.gradia \
        com.discordapp.Discord \
        com.github.tchx84.Flatseal \
        com.github.unrud.VideoDownloader \
        com.heroicgameslauncher.hgl \
        com.mattjakeman.ExtensionManager \
        com.protonvpn.www \
        com.rtosta.zapzap \
        de.haeckerfelix.Fragments \
        dev.bragefuglseth.Keypunch \
        io.github.alainm23.planify \
        io.github.realmazharhussain.GdmSettings \
        io.github.shiftey.Desktop \
        io.github.swordpuffin.rewaita \
        io.github.swordpuffin.wardrobe \
        io.gitlab.metadatacleaner.metadatacleaner \
        io.gitlab.theevilskeleton.Upscaler \
        moe.launcher.sleepy-launcher \
        net.davidotek.pupgui2 \
        net.waterfox.waterfox \
        org.gnome.Fractal \
        org.gnome.font-viewer \
        org.localsend.localsend_app \
        org.onlyoffice.desktopeditors \
        org.polymc.PolyMC

    info "Flatpak uygulamaları kuruldu."
}

# ─── Config dosyaları ──────────────────────────────────────
install_configs() {
    info "Config dosyaları kopyalanıyor..."

    CONFIG_DIR="$HOME/.config"
    mkdir -p "$CONFIG_DIR"

    # fastfetch
    info "  → fastfetch"
    mkdir -p "$CONFIG_DIR/fastfetch"
    cp "$DOTFILES_DIR/fastfetch/config.jsonc" "$CONFIG_DIR/fastfetch/config.jsonc"

    # fish
    info "  → fish"
    mkdir -p "$CONFIG_DIR/fish/completions"
    mkdir -p "$CONFIG_DIR/fish/conf.d"
    mkdir -p "$CONFIG_DIR/fish/functions"
    mkdir -p "$CONFIG_DIR/fish/themes"
    cp "$DOTFILES_DIR/fish/config.fish"    "$CONFIG_DIR/fish/config.fish"
    cp "$DOTFILES_DIR/fish/fish_plugins"   "$CONFIG_DIR/fish/fish_plugins"
    cp "$DOTFILES_DIR/fish/fish_variables" "$CONFIG_DIR/fish/fish_variables"

    # kitty
    info "  → kitty"
    mkdir -p "$CONFIG_DIR/kitty"
    cp "$DOTFILES_DIR/kitty/kitty.conf" "$CONFIG_DIR/kitty/kitty.conf"

    # easyeffects
    info "  → easyeffects"
    mkdir -p "$CONFIG_DIR/easyeffects/db"
    cp "$DOTFILES_DIR/easyeffects/db/"* "$CONFIG_DIR/easyeffects/db/"

    # librewolf user.js
    info "  → librewolf user.js"
    LIBREWOLF_PROFILE=$(find "$HOME/.librewolf" -maxdepth 2 -name "prefs.js" 2>/dev/null | head -1 | xargs dirname)
    if [ -n "$LIBREWOLF_PROFILE" ]; then
        cp "$DOTFILES_DIR/librewolf/user.js" "$LIBREWOLF_PROFILE/user.js"
        info "  Librewolf profili bulundu: $LIBREWOLF_PROFILE"
    else
        warn "  Librewolf profili bulunamadı. Librewolf'u bir kez aç ve kapat, sonra tekrar dene."
        warn "  Manuel olarak kopyalaman gerekirse: cp $DOTFILES_DIR/librewolf/user.js ~/.librewolf/PROFİL_KLASÖRÜ/user.js"
    fi

    info "Config dosyaları kopyalandı."
}

# ─── VSCodium eklentileri ──────────────────────────────────
install_vscodium_extensions() {
    if ! command -v codium &>/dev/null; then
        error "VSCodium kurulu değil, önce native uygulamaları kur."
        return 1
    fi

    info "VSCodium eklentileri kuruluyor..."
    while IFS= read -r ext; do
        [ -z "$ext" ] && continue
        codium --install-extension "$ext" || warn "Kurulamadı: $ext"
    done < "$DOTFILES_DIR/extensions/extensions.txt"

    info "VSCodium eklentileri kuruldu."
}

# ─── Fisher + fish pluginleri ──────────────────────────────
install_fisher() {
    if ! command -v fish &>/dev/null; then
        error "Fish kurulu değil, önce native uygulamaları kur."
        return 1
    fi

    info "Fisher kuruluyor..."
    fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

    info "Fish pluginleri kuruluyor..."
    fish -c "fisher update"

    info "Fisher ve pluginler kuruldu."
}

# ─── Seçime göre çalıştır ──────────────────────────────────
case "$CHOICE" in
    1)
        install_native
        install_flatpak
        install_configs
        install_vscodium_extensions
        install_fisher
        ;;
    2) install_native ;;
    3) install_flatpak ;;
    4) install_configs ;;
    5) install_vscodium_extensions ;;
    6) install_fisher ;;
    *)
        error "Geçersiz seçim: $CHOICE"
        exit 1
        ;;
esac

echo ""
info "Tamamlandı!"
