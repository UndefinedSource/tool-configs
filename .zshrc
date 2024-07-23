# Allow Vim Mode
bindkey -v

# ******************************************************
# Alias
# ******************************************************
# Directory
alias wd='cd ~/Desktop'

# Vim
alias vrc='vi ~/.vimrc'

# Git
alias gpm='git push origin main'

# Abbreviations
alias ll='ls -la'
alias cls='clear'
alias py='python3'

# ******************************************************
# Prompt Customization - for Git
# ******************************************************
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n%~% > '

# Display current branch name on the right
RPROMPT=\$vcs_info_msg_0_
