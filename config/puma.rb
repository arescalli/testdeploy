application_path = File.expand_path("#{File.dirname(__FILE__)}/../../../current")
shared_path = File.expand_path("#{File.dirname(__FILE__)}/../../../shared")


directory application_path

workers Integer(ENV['PUMA_WORKERS'] || 3)
threads Integer(ENV['MIN_THREADS']  || 1), Integer(ENV['MAX_THREADS'] || 16)

environment ENV['RACK_ENV'] || 'production'


pidfile "#{shared_path}/tmp/pids/puma.pid"
state_path "#{shared_path}/tmp/sockets/puma.state"
bind "unix://#{shared_path}/tmp/sockets/puma.sock"



on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end


activate_control_app "unix://#{shared_path}/tmp/sockets/pumactl.sock"
preload_app!
