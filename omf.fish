# Path to Oh My Fish install.
set -q XDG_DATA_HOME
and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# bobthefisher theme
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '
set -g theme_display_cmd_duration yes
set -g theme_date_format "+%H:%M:%S"
