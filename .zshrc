source ~/.profile

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

autoload -Uz compinit
compinit

compdef __start_kubectl k

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# customizing and coloring the zsh prompt
setopt PROMPT_SUBST
PROMPT='$ %F{cyan}${vcs_info_msg_0_}%f %F{yellow}%.%f%F{white} >>%f '
# PROMPT='%F{white}%n%f %F{yellow}%.%f ${vcs_info_msg_0_} %F{white}>>%f '
# RPROMPT=\$vcs_info_msg_0_

autoload -U +X bashcompinit && bashcompinit
PATH="$PATH:/Applications/IntelliJ IDEA CE.app/Contents/MacOS"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
