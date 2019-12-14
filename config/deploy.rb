# config valid for current version and patch releases of Capistrano
lock "~> 3.11.2"

set :application, "uwjumpstart"
set :repo_url, "https://github.com/curationexperts/uwjumpstart.git"
set :deploy_to, '/opt/uwjumpstart'
set :rails_env, 'production'

set :log_level, :info
set :bundle_flags, '--deployment'
set :bundle_env_variables, nokogiri_use_system_libraries: 1

set :keep_releases, 5
set :assets_prefix, "#{shared_path}/public/assets"
set :pty,  false

SSHKit.config.command_map[:rake] = 'bundle exec rake'

set :branch, ENV['REVISION'] || ENV['BRANCH_NAME'] || ENV['BRANCH'] || 'master'

append :linked_dirs, "log"
append :linked_dirs, "public/assets"

append :linked_files, "config/database.yml"
append :linked_files, "config/secrets.yml"
append :linked_files, ".env.production"


  # We have to re-define capistrano-sidekiq's tasks to work with
  # systemctl in production. Note that you must clear the previously-defined
  # tasks before re-defining them.
  Rake::Task["sidekiq:stop"].clear_actions
  Rake::Task["sidekiq:start"].clear_actions
  Rake::Task["sidekiq:restart"].clear_actions
  namespace :sidekiq do
    task :stop do
      on roles(:app) do
        execute :sudo, :systemctl, :stop, :sidekiq
      end
    end
    task :start do
      on roles(:app) do
        execute :sudo, :systemctl, :start, :sidekiq
      end
    end
    task :restart do
      on roles(:app) do
        execute :sudo, :systemctl, :restart, :sidekiq
      end
    end
  end
