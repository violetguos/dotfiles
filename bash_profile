if [ -f ~/.profile ] ; then
    . ~/.profile
fi

# If the shell is interactive, source ~/.bashrc
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac


# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"

# added by Anaconda3 5.2.0 installer
export PATH="/Users/vikuo/anaconda3/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/vikuo/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/vikuo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/vikuo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/vikuo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(rbenv init -)"

# added for brew's gnu lib
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# opam configuration
test -r /Users/vikuo/.opam/opam-init/init.sh && . /Users/vikuo/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# for nvm js
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(rbenv init -)"

export PATH="/usr/local/sbin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# For Apache Spark
if which java > /dev/null; then export JAVA_HOME=$(/usr/libexec/java_home); fi
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
# For a ipython notebook and pyspark integration
if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark@2.4.6/2.4.6/libexec"
  # export SPARK_HOME="Users/vikuo/software_packages/spark-2.3.0-bin-hadoop2.7"
  export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH
  export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
  export PATH=$SPARK_HOME/bin:$PATH
fi

# for no HB tracking
export HOMEBREW_NO_ANALYTICS=1
