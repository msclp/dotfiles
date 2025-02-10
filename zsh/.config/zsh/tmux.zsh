export TMUXP_CONFIGDIR=$HOME/.config/tmuxp

# _tmuxinator() {
#   local commands projects
#   commands=(${(f)"$(tmuxinator commands zsh)"})
#   projects=(${(f)"$(tmuxinator completions start)"})
#
#   if (( CURRENT == 2 )); then
#     _alternative \
#       'commands:: _describe -t commands "tmuxinator subcommands" commands' \
#       'projects:: _describe -t projects "tmuxinator projects" projects'
#   elif (( CURRENT == 3)); then
#     case $words[2] in
#       copy|cp|c|debug|delete|rm|open|o|start|s|edit|e)
#         _arguments '*:projects:($projects)'
#       ;;
#     esac
#   fi
#
#   return
# }

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    tmux new-session -A -s $HOST || tmux >/dev/null 2>&1
fi
