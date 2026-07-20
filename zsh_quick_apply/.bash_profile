# alias python="/usr/bin/python3"


#PATH
# export PATH="$PATH:$HOME/bin"

#Add other profile


# source ~/.bazel/bin/bazel-complete.bash
# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
alias set-bazel-cache_name="export CONTAINER_ENV=container"
alias unset-bazel-cache_name="unset CONTAINER_ENV" 
# used for bazelrc
#      build:container --symlink_prefix=container-bazel-
#      test:container --symlink_prefix=container-bazel-
# usage: bazel build //target_name --config=$(CONTAINER_ENV);

# Keep version managers out of shell startup. Enable them only in a session
# that needs them:
# export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# eval "$(jenv init -)"

alias ip="curl cip.cc"

set-proxy() {
  export http_proxy='http://127.0.0.1:13659'
  export https_proxy='http://127.0.0.1:13659'
  export all_proxy='socks5://127.0.0.1:13659'
  export HTTP_PROXY='http://127.0.0.1:13659'
  export HTTPS_PROXY='http://127.0.0.1:13659'
  export ALL_PROXY='socks5://127.0.0.1:13659'
  export no_proxy='localhost,127.0.0.1,::1'
  export NO_PROXY='localhost,127.0.0.1,::1'
}

unset-proxy() {
  unset http_proxy https_proxy all_proxy
  unset HTTP_PROXY HTTPS_PROXY ALL_PROXY
  unset no_proxy NO_PROXY
}
