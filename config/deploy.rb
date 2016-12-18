set :application, 'action-cable-example'
set :deploy_to, -> { "/var/www/#{fetch(:application)}/#{fetch(:application)}_#{fetch(:stage)}" }
set :branch, -> { `git rev-parse --abbrev-ref HEAD`.chomp }

# 本地 git 示例: ssh://git@example.com:30000/~/me/my_repo.git
# svn 示例: svn://myhost/myrepo/#{fetch(:branch)}
set :repo_url, 'git@github.com:zw963/action-cable-example.git'
set :keep_releases, 5
set :tmp_dir, "#{fetch(:deploy_to)}/tmp"

set :local_user, -> { Etc.getlogin }
set :rails_env, -> { fetch(:stage) }

set :linked_files, %w{
}
set :linked_dirs, %w{
  log
  tmp
}

  # vendor/bundle
  # public/system
  # public/uploads

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :rvm_custom_path, '~/.myveryownrvm'
# lock '3.7.0'
