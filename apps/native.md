# Native Apps

## One-Line Install Commands

### zypper (openSUSE)

```bash
sudo zypper install -y docker docker-compose flatpak gamemode gamescope wine mangohud starship waypipe openrgb kitty fish librewolf vscodium obs-studio steam virt-manager lutris vlc cava fastfetch nano chromuim git nodejs discord gnome-tweaks opi

### opi (openSUSE)

```bash
sudo opi -n install antigravity && sudo opi -n install vscodium && sudo opii -n install localsend
```

### Gnome debloat 

```bash
sudo zypper remove -y evolution gnome-backgrounds gnome-characters gnome-connections gnome-console gnome-contacts gnome-control-center-goa gnome-logs gnome-maps gnome-packagekit gnome-remote-desktop gnome-software gnome-system-monitor gnome-text-editor malcontent-control opensuse-welcome-launcher patterns-base-documentation patterns-gnome-gnome_games patterns-office-office libreoffice totem firefox
```

### Librewolf repo setup

  ```bash
  sudo rpm --import https://repo.librewolf.net/pubkey.gpg && sudo zypper ar -ef https://repo.librewolf.net librewolf && sudo zypper ref && sudo zypper in librewolf
  ```

## Package List

- docker
- docker-compose
- flatpak
- gamemode
- gamescope
- wine
- mangohud
- starship
- waypipe
- openrgb
- kitty
- fish
- librewolf
- vscodium
- obs-studio
- steam
- virt-manager
- antigravity
- localsend
- lutris
- vlc
- cava
- fastfetch
- nano
- chromuim
- git
- nodejs
- discord
- gnome-tweaks

---

# Flatpak Apps

## One-Line Install Command
```bash
flatpak install -y com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager com.protonvpn.www de.haeckerfelix.Fragments dev.bragefuglseth.Keypunch io.github.alainm23.planify io.gitlab.theevilskeleton.Upscaler net.davidotek.pupgui2 org.onlyoffice.desktopeditors in.cinny.Cinny io.github.kukuruzka165.materialgram io.github.pol_rivero.github-desktop-plus org.gnome.World.Iotas io.gitlab.adhami3310.Converter ai.lmstudio.lm-studio net.ankiweb.Anki org.gnome.World.Iotas
```

## Package List

- `com.github.tchx84.Flatseal` - Flatpak permission editor
- `com.mattjakeman.ExtensionManager` - Extensions Manager
- `com.protonvpn.www` - Proton VPN
- `de.haeckerfelix.Fragments` - Torrent Client
- `dev.bragefuglseth.Keypunch` - Keyboard WPM test
- `io.github.alainm23.planify` - Planning and note taking app
- `io.gitlab.theevilskeleton.Upscaler` - Image Upscaler
- `net.davidotek.pupgui2` - Proton installer
- `org.onlyoffice.desktopeditors` - ONLYOFFICE
- `in.cinny.Cinny` - Matrix Client
- `io.github.kukuruzka165.materialgram` - Material design Telegram
- `io.github.pol_rivero.github-desktop-plus` - GitHub Desktop+
- `org.gnome.World.Iotas` - Journal app
- `io.gitlab.adhami3310.Converter` - Switcheroo
- `ai.lmstudio.lm-studio` - lmstudio
- `net.ankiweb.Anki` - Anki
- `org.gnome.World.Iotas` - Iotas journal