set :application, 'action-cable-example'

# 设置要部署的 root 目录, Default: -> { "/var/www/#{fetch(:application)}" }
# 这个应该环境中指定.
# set :deploy_to, -> { "/data_1/www/action-cable-example/#{fetch(:application)}" }
set :branch, -> { `git rev-parse --abbrev-ref HEAD`.chomp }

# 本地 git 示例: ssh://git@example.com:30000/~/me/my_repo.git
# svn 示例: svn://myhost/myrepo/#{fetch(:branch)}
set :repo_url, 'git@github.com:zw963/action-cable-example.git'
set :keep_releases, 5

# config valid only for current version of Capistrano
# lock '3.7.0'

set :linked_files, %w{
  config/database.yml
  config/secrets.yml
}
set :linked_files, %w{
  log
  tmp
}

set :local_user, -> { Etc.getlogin }
