set fish_greeting
set -gx MOZ_ENABLE_WAYLAND 1
set -gx XCURSOR_THEME Catppuccin-Latte-Sapphire-Cursors
set -gx GTK_CSD 1
set -gx XDG_CURRENT_DESKTOP hikari

set -gx PROJECTS_DIR $HOME/Projects
set -gx PICTURES_DIR $HOME/Pictures

set -gx DENO_INSTALL $HOME/.deno

if status is-interactive
    # Commands to run in interactive sessions can go here
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec hikari
    end
end

starship init fish | source
zoxide init --cmd cd --hook pwd fish | source
