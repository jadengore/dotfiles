set -gx OMF_PATH "/Users/Edward/.local/share/omf"
set -gx OMF_CONFIG "/Users/Edward/.dotfiles/fish/omf"
source $OMF_PATH/init.fish

# rbenv
set PATH $HOME/.rbenv/bin $PATH
. (rbenv init -|psub)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)

# TODO: Figure out a better solution
nvm use default > /dev/null