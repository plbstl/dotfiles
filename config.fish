# FISH SHELL -- https://fishshell.com/

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx PATH $PATH $HOME/go/bin
set -gx GPG_TTY (tty)

starship init fish | source
