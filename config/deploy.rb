set :application, 'action-cable-example'

# 设置要部署的 root 目录, Default: -> { "/var/www/#{fetch(:application)}" }
# 这个应该环境中指定.
# set :deploy_to, -> { "/data_1/www/action-cable-example/#{fetch(:application)}" }

set :scm, :git
set :branch, :master
# 本地 git 示例: ssh://git@example.com:30000/~/me/my_repo.git
# svn 示例: svn://myhost/myrepo/#{fetch(:branch)}
set :repo_url, 'git@github.com:zw963/action-cable-example.git'
set :keep_releases, 5

# config valid only for current version of Capistrano
lock '3.7.0'

local_user, -> { Etc.getlogin }

# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp


# Default branch is :master


# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}


# Default value for keep_releases is 5
