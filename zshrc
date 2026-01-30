# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="kardan"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  docker
  kubectl
  httpie
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
EDITOR=nvim

# enable square brackets for rake
alias rake='noglob rake'

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export DOTNET_CLI_UI_LANGUAGE=en
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

PATH=$PATH:$HOME/.local/bin # Haskell Stack gave warning about this dir being not on path

PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export ANDROID_SDK="$HOME/Library/Android/sdk"

PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME=$HOME/.gem
PATH=$GEM_HOME/bin:$PATH
PATH=$GEM_HOME/ruby/3.1.0/bin:$PATH
PATH="$PATH:$ANDROID_SDK/platform-tools:$ANDROID_SDK/emulator"
PATH="/opt/homebrew/opt/ccache/libexec:$PATH"

PATH=$PATH:~/Library/Python/3.7/bin
PATH="/usr/local/opt/python@3.8/bin:$PATH"
PATH="/usr/local/opt/openjdk/bin:$PATH"
alias python=python3

export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set Vi bindings for ZLE (command line editor)
# And fix backspace to allow delete old characters
bindkey -v '^?' backward-delete-char

# Enable fzf shell integration (shortcuts)
source <(fzf --zsh)

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('$HOME/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="$HOME/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# Case-sensitive completion.
# CASE_SENSITIVE="true"

# Hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# Auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Command auto-correction.
# ENABLE_CORRECTION="true"

# Red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

