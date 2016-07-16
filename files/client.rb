log_level          :info
log_location       STDOUT
ssl_verify_mode    :verify_none
chef_server_url    "https://chef.pitux.ovh"
Mixlib::Log::Formatter.show_time = true
node_name          "raspberry"
file_cache_path    "/var/cache/chef"
file_backup_path   "/var/lib/chef/backup"
pid_file           "/var/run/chef/client.pid"
cache_options({ :path => "/var/cache/chef/checksums", :skip_expires => true})
signing_ca_user "chef"
Mixlib::Log::Formatter.show_time = true
validation_client_name "chef-validator"
