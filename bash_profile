export PATH=${PATH}:~/android-sdk-macosx/tools
export PATH=${PATH}:~/android-sdk-macosx/platform-tools
export PATH=/usr/local/opt/vim/bin:${PATH}
# Some errors with vim not knowing where syntax.vim is: 
# Had to export VIMRUNTIME so it knows where vim actually is. Not sure why homebrew didn't get this right?
export VIMRUNTIME=/usr/local/opt/vim/share/vim/vim81

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

alias ..='cd ..'
alias ls='ls -FG'

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

export TERM=xterm-256color
#screenfetch
touch ~/todo.txt
cat ~/todo.txt

# Print a custom fortune; wrap text at line 60.
alias myfortune="fortune ~/text/fortunes/ | fold -sw 60"
myfortune
# Eventually i'll need to make sure that this fortune file exists, or maybe move it somewhere better. 
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Suggested by rbenv, to start it automatically.
eval "$(rbenv init -)"
