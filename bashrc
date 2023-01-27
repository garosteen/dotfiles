
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Git Configuration
# Branch name in prompt
# This file is referenced in the Learn Enough Git to Be Dangerous book by Michael Hartl.
# To get these files, perform the following:
# curl -o ~/.git-prompt.sh       -OL cdn.learnenough.com/git-prompt.sh
# curl -o ~/.git-completion.bash -OL cdn.learnenough.com/git-completion.bash 
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Tab completion for branch names
source ~/.git-completion.bash

# No longer using this, as it was replaced above.
# PS1='[\W]\$ '
    # This changes the command prompt, and is seen in learn enough text 
    # editor to be dangerous by Michael Hartl
    # Consider learning more about this, maybe there's a better one?

alias python=/usr/local/bin/python3

# Created by `pipx` on 2023-01-26 04:01:48
export PATH="$PATH:/Users/gosteen/.local/bin"
