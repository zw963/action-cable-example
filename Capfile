require 'capistrano/setup'      # Load DSL and set up stages
require 'capistrano/deploy'     # Include default deployment tasks

# capistrano/rails 包含以下三部分.
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git
require 'capistrano/rvm'

Dir.glob('lib/capistrano/tasks/*.rake').each {|r| import r }
