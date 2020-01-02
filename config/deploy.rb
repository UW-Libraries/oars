# config valid for current version and patch releases of Capistrano
lock '~> 3.11.2'

set :application, 'oars'
set :repo_url, 'https://github.com/UW-Libraries/oars.git'
set :deploy_to, '/opt/oars'
set :rails_env, 'production'
set :init_system, :systemd
set :service_unit_name, 'sidekiq.service'
set :sidekiq_user, 'deploy'

set :log_level, :info
set :bundle_flags, '--deployment'
set :bundle_env_variables, nokogiri_use_system_libraries: 1

set :keep_releases, 5
set :assets_prefix, "#{shared_path}/public/assets"
set :pty, false

SSHKit.config.command_map[:rake] = 'bundle exec rake'

set :branch, ENV['REVISION'] || ENV['BRANCH_NAME'] || ENV['BRANCH'] || 'master'

append :linked_dirs, 'log'
append :linked_dirs, 'public/assets'

append :linked_files, 'config/database.yml'
append :linked_files, 'config/secrets.yml'
append :linked_files, '.env.production'
