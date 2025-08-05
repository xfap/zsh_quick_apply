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
#      build: container --symlink_prefix=container-
#      bazel-test: container --symlink_prefix=container-bazel-
# usage: bazel build //target_name --config=$(CONTAINER_ENV);
