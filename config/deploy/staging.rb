# set :branch, 'dev'
role :web, %w{action-cable-example@www.ershou_web.test.xthinkapp.com}
role :app, %w{action-cable-example@www.ershou_web.test.xthinkapp.com}
role :db,  %w{action-cable-example@www.ershou_web.test.xthinkapp.com}
set :rvm_ruby_version, "ruby-2.2.4@#{fetch(:application)}"

#  set :ssh_options, {
#    keys: %w(/home/zw963/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
