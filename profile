# Homebrew
export PATH=/usr/local/bin:$PATH
# Java
export JAVA_HOME=$(/usr/libexec/java_home)
# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Go
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin

# added by Anaconda3 5.2.0 installer
export PATH="/Users/vikuo/anaconda3/bin:$PATH"


# added manually for GTV
export GTV_DB="mongodb://gtvvideo:gtvtestpassw0rd@3.235.188.105:27017/vide...:o?authSource=video"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vikuo/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/vikuo/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vikuo/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/vikuo/Downloads/google-cloud-sdk/completion.bash.inc'; fi

