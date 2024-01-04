#!/usr/bin/env bash
#===============================================================================
#   Author: Jason Brunelle
#    Email: jasonmb626@gmail.com
#  Created: 2023-12-13 15:27
#===============================================================================

#based on

#===============================================================================
#   Author: Wenxuan
#    Email: wenxuangm@gmail.com
#  Created: 2018-04-05 17:37
#===============================================================================

# $1: option
# $2: default value
tmux_get() {
    local value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

# $1: option
#$2: value
tmux_set() {
    tmux set-option -gq "$1" "$2"
}

# Vars
user=$(whoami)
rarrow=''
larrow=''
user_icon=''
window_icon=''
prefix_highlight_pos=''
session_list="#(tmux list-sessions | sed 's/(attached)/*/' | sed -E 's/([[:alnum:]]+): ([[:digit:]]+) windows \(.*\) *(\*)*/(\1\3: #\2)/' | tr '\n' ' ' | sed 's/ //g')"
window_list="#(tmux list-windows | sed 's/\d40//' | cut -d' ' -f 2-3 | sed -E 's/(.*) ([[:digit:]]*)/(\1:󰖮\2)/' | tr '\n' ' ' | sed 's/ //g')"
# short for Theme-Colour
TC='#82AAFF'
TC2='#21C7A8'

G01=#1C2033	#232
G02=#24283B	#233
G03=#2C3043	#234
G04=#34384B	#235
G05=#3C4053	#236
G06=#44485B	#237
G07=#4C5063	#238
G08=#54586B	#239
G09=#5C6073	#240
G10=#64687B	#241
G11=#6C7083	#242
G12=#74788B	#243

FG="$G10"
BG="$G04"

# Status options
tmux_set status-interval 1
tmux_set status on

# Basic status bar colors
tmux_set status-fg "$FG"
tmux_set status-bg "$BG"
tmux_set status-attr none

# tmux-prefix-highlight
tmux_set @prefix_highlight_fg "$BG"
tmux_set @prefix_highlight_bg "$FG"
tmux_set @prefix_highlight_show_copy_mode 'on'
tmux_set @prefix_highlight_copy_mode_attr "fg=$TC,bg=$BG,bold"
tmux_set @prefix_highlight_output_prefix "#[fg=$TC]#[bg=$BG]$larrow#[bg=$TC]#[fg=$BG]"
tmux_set @prefix_highlight_output_suffix "#[fg=$TC]#[bg=$BG]$rarrow"

# Left side of status bar
tmux_set status-left-bg "$G04"
tmux_set status-left-fg "$G12"
tmux_set status-left-length 150
tmux_set status-left "#[fg=$G04,bg=$TC,bold] $session_list #[fg=$TC,bg=$G06,nobold]$rarrow#[fg=$TC2,bg=$G06] $window_list #[fg=$G06,bg=$BG]$rarrow"

# Right side of status bar
tmux_set status-right-bg "$G04"
tmux_set status-right-fg "$G12"
tmux_set status-right-length 150
tmux_set status-right "#[fg=$G06,bg=$BG]$larrow#[fg=$TC2,bg=$G06] #{pane_id} #[fg=$TC,bg=$G06]$larrow#[fg=$G04,bg=$TC] $user_icon $user@#h"

# Window status format
tmux_set window-status-format         ""
tmux_set window-status-current-format ""

# Window separator
tmux_set window-status-separator ""

# Pane border
tmux_set pane-border-style "fg=$G07,bg=default"

# Active pane border
tmux_set pane-active-border-style "fg=$TC,bg=default"

# Pane number indicator
tmux_set display-panes-colour "$G07"
tmux_set display-panes-active-colour "$TC"

# Copy mode highlight
tmux_set mode-style "bg=$TC,fg=$FG"
