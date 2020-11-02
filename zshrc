ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Useful plugins for Rails development with Sublime Text
plugins=(git gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search zsh-autosuggestions)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Terraform
export TF_LOG=TRACE

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# PATH
export PATH="./bin:./node_modules/.bin:$(yarn global bin):/usr/local/sbin:/home/bjmrq/.local/bin:${PATH}"
# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="code $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="code $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="code $@ >/dev/null 2>&1 -a"

export RUST_BACKTRACE=1

CASE_SENSITIVE="false"

# Was needed to fix docker force recreate
export LD_LIBRARY_PATH="/usr/local/lib"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
# . <(denon --completion)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform


# ARCHIVE
#KUBCTL
# [[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
# export BUNDLER_EDITOR="code $@ >/dev/null 2>&1 -a"
# complete -F __start_kubectl k

#Platformsh
# BEGIN SNIPPET: Platform.sh CLI configuration
# HOME=${HOME:-'/home/bjmrq'}
# export PATH="$HOME/"'.platformsh/bin':"$PATH"
# if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

# Deno
# export DENO_INSTALL="/home/bjmrq/.deno"