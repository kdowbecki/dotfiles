
ZSH_THEME="agnoster"

prompt_context(){}

# Simpler prompt with time on the right side, see
# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# https://stackoverflow.com/a/60842361/1602555
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%2~%f%b %# '
RPROMPT="%F{yellow}%D{%L:%M:%S}"

# Editor
export EDITOR="nvim"

# Fix delete key outputing ~ character, see https://superuser.com/a/1078653
bindkey "^[[3~" delete-char

# Add zsh aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Add CockroachDB to path
export PATH="/opt/cockroach/default:$PATH"

# NVM Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# SDKMan
export SDKMAN_DIR="/home/kd/.sdkman"
[[ -s "/home/kd/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kd/.sdkman/bin/sdkman-init.sh"

