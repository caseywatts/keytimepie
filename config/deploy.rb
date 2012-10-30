require 'bundler/capistrano'
set :user, 'caseywatts_keytimepie'
set :domain, 'ssh.phx.nearlyfreespeech.net'
set :applicationdir, "appdir"

default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
ssh_options[:forward_agent] = true
set :scm, 'git'
set :repository, "git@github.com:caseywatts/keytimepie.git"  # Your clone URL
set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true



# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true
 
# deploy config
set :deploy_to, applicationdir
set :deploy_via, :export
 
# additional settings
default_run_options[:pty] = true  # Forgo errors when deploying from windows
#ssh_options[:keys] = %w(/home/user/.ssh/id_rsa)            # If you are using ssh_keysset :chmod755, "app config db lib public vendor script script/* public/disp*"set :use_sudo, false 

