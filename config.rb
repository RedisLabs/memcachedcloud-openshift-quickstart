def get_client
  ### Set the servers, username and password of your Memcached Cloud instance ###
  memcachedcloud_servers = 'your-memcached-cloud-servers'    # Replace with your memcached cloud servers list, separated by a comma
  memcachedcloud_username = 'your-memcached-cloud-username'  # Replace with your memcached cloud username, for SASL authentication
  memcachedcloud_password = 'your-memcached-cloud-password'  # Replace with your memcached cloud password, for SASL authentication
   
  @cache ||= Dalli::Client.new(memcachedcloud_servers.split(','), :username => memcachedcloud_username, :password => memcachedcloud_password)
end

def get_cache
  begin
    @cache = get_client
  rescue
    erb :index
    return
  end
end
