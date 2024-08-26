# Add ~/bin to path
# export PATH="$HOME/bin:$HOME/bin/miniconda/bin:$PATH"  # commented out by conda initialize

# cp-tool can be run as `source cpt`
# to automatically switch to created directories
alias cpt='source cpt'

alias vim='nvim'
alias ls='ls --color=auto'

# diy++ from https://github.com/romkatv/zsh-bench/blob/master/configs/diy%2B%2B/skel/.zshrc
function zcompile-many() {
  local f
  for f; do zcompile -R -- "$f".zwc "$f"; done
}

# Clone (and compile to wordcode) missing plugins.
if [[ ! -e ~/.config/zsh/zsh-syntax-highlighting ]]; then
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting
  zcompile-many ~/.config/zsh/zsh-syntax-highlighting/{zsh-syntax-highlighting.zsh,highlighters/*/*.zsh}
fi
if [[ ! -e ~/.config/zsh/zsh-autosuggestions ]]; then
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/zsh/zsh-autosuggestions
  zcompile-many ~/.config/zsh/zsh-autosuggestions/{zsh-autosuggestions.zsh,src/**/*.zsh}
fi
if [[ ! -e ~/.config/zsh/powerlevel10k ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k
  make -C ~/.config/zsh/powerlevel10k pkg
fi

# Activate Powerlevel10k Instant Prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable the "new" completion system (compsys).
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
[[ ~/.config/zsh/.zcompdump.zwc -nt ~/.config/zsh/.zcompdump ]] || zcompile-many ~/.config/zsh/.zcompdump
unfunction zcompile-many

ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Load plugins.
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/.p10k.zsh

# Vim mode
# bindkey -v

# Delete forward
bindkey '\e[3~' delete-char

# Delete forward a word
bindkey '^[[3;3~' delete-word
bindkey '^[[3;5~' delete-word
bindkey '^[[3;7~' delete-word

# Delete backward a word
bindkey '^H' backward-delete-word

# Move backward a word
bindkey ';3D' backward-word
bindkey ';5D' backward-word
bindkey ';7D' backward-word

# Move forward a word
bindkey ';3C' forward-word
bindkey ';5C' forward-word
bindkey ';7C' forward-word

# Move to home/end
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Change the definition of a "word"
WORDCHARS=${WORDCHARS//\//}
WORDCHARS=${WORDCHARS//-}
WORDCHARS=${WORDCHARS//.}
WORDCHARS=${WORDCHARS//\\}

# History
export HISTFILE=$HOME/.zsh_history
export SAVEHIST=20000
export HISTSIZE=20000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

if [[ -z "${CONDA_SHLVL}" ]]; then
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/simon/bin/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/simon/bin/miniconda/etc/profile.d/conda.sh" ]; then
            . "/home/simon/bin/miniconda/etc/profile.d/conda.sh"
        else
            export PATH="/home/simon/bin/miniconda/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi
