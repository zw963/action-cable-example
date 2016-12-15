set :application, 'action-cable-example'
set :deploy_to, -> { "/var/www/#{fetch(:application)}/#{fetch(:application)}_#{fetch(:stage)}" }
set :branch, -> { `git rev-parse --abbrev-ref HEAD`.chomp }
# lock '3.7.0'

# 本地 git 示例: ssh://git@example.com:30000/~/me/my_repo.git
# svn 示例: svn://myhost/myrepo/#{fetch(:branch)}
set :repo_url, 'git@github.com:zw963/action-cable-example.git'
set :keep_releases, 5
set :tmp_dir, "#{fetch(:deploy_to)}/tmp"


set :local_user, -> { Etc.getlogin }

set :linked_files, %w{
  config/database.yml
  config/secrets.yml
}
set :linked_files, %w{
  log
  tmp
}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
