export PATH=${PATH}:~/android-sdk-macosx/tools
export PATH=${PATH}:~/android-sdk-macosx/platform-tools
export PATH=/usr/local/opt/vim/bin:${PATH}
# Some errors with vim not knowing where syntax.vim is: 
# Had to export VIMRUNTIME so it knows where vim actually is. Not sure why homebrew didn't get this right?
export VIMRUNTIME=/usr/local/opt/vim/share/vim/vim82

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

alias ..='cd ..'
alias ls='ls -FG'

export TERM=xterm-256color
#screenfetch
touch ~/todo.txt
cat ~/todo.txt

# Print a custom fortune; wrap text at line 60.
alias myfortune="fortune ~/fortunes/ | fold -sw 60"
myfortune
# Eventually i'll need to make sure that this fortune file exists, or maybe move it somewhere better. 
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Suggested by rbenv, to start it automatically.
eval "$(rbenv init -)"

set -o vi

# Functions to support running Processing from the command line.
# Source: https://www.dsfcode.com/using-processing-via-the-command-line/
function prun {
     if [[ $1 != *'/..'* && $1 != *'../'* && $1 != '.'* && $1 != '/'* ]]
     then
          [[ $1 == "" ]] && sketch=`pwd`;
          [[ $1 != "" ]] && sketch=`pwd`"/"`echo $1 | sed 's;/$;;'`;

          processing-java --sketch="$sketch" --output="$sketch/.tmp_output" --run;
          rm -r "$sketch/.tmp_output";
     else
          echo 'ERROR: Please enter the path to your sketch relative to your current location, ".", "..", "~", and full paths will not work with this function';
          echo '       If you are in the sketch folder you want to run it, simply exicute prun with no arguments';
     fi
}

function psetup {
     sketch=$1;
     mkdir $sketch; touch $sketch/$sketch.pde; cd $sketch;
}

