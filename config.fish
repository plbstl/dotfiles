# FISH SHELL -- https://fishshell.com/

if status is-interactive
    # Commands to run in interactive sessions can go here

    string match -q "$TERM_PROGRAM" vscode
    and . (code --locate-shell-integration-path fish)
end

# pnpm
set -gx PNPM_HOME /Users/setale/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# homebrew
# if test (arch) = arm64
#     eval /opt/homebrew/bin/brew shellenv
# else
#     eval /usr/local/bin/brew shellenv
# end
# homebrew end

# ruby
source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_conf.d/chruby_auto.fish
source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_functions.d/chruby.fish
chruby ruby-3.2.2
# ruby end

# android
set -gx ANDROID_HOME /Users/setale/Library/Android/sdk
if not string match -q -- $ANDROID_HOME $PATH
    set -gx PATH "$ANDROID_HOME" $PATH
end
# android end
