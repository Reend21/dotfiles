if status is-interactive
# Commands to run in interactive sessions can go here
end

starship init fish | source
set -g fish_greeting ""
abbr -a up "sudo zypper dup --no-recommends"
abbr -a ff "fastfetch"
abbr -a op "sudo"
abbr -a in "sudo zypper install"
abbr -a mpeg "ffmpeg -i input.mp4 -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le output.mov"
abbr -a c "clear"
