Memcached Cloud on OpenShift in 5 Minutes
-------------------------------------

This git repository helps you easily integrate the Memcached Cloud service into your OpenShift apps.

###Step 1. Create OpenShift App###

Create an account at http://openshift.redhat.com/ and set up you local machine with the client tools.

Create a ruby-1.9 application (you can call your application whatever you want)
```
    rhc app create memcachedcloudapp ruby-1.9 --from-code git://github.com/openshift-quickstart/memcachedcloud-openshift-quickstart.git
```
If `--from-code` is not recognized, update your `rhc` gem.

###Step 2. Configure Memcached Cloud###

1. Sign up for a free account at http://garantiadata.com/memcached
2. Create a memcached bucket
3. Retrieve your instance's host, port, username and password
4. Configure your memcached bucket at <strong>config.rb</strong> file.

```ruby
  config = {
    emcachedcloud_servers = 'your-memcached-cloud-servers'
    memcachedcloud_username = 'your-memcached-cloud-username'
    memcachedcloud_password = 'your-memcached-cloud-password'
  }
```

###Step 3. Deploy your app###

```
    git add .
    git commit -m "my first commmit"
    git push
```

###Step 4. View your app!###

```
    http://memcachedcloudapp-$yournamespace.rhcloud.com
```


More Information
----------------------------

For Memcached Clouds's developer resources visit: http://garantiadata.com/memcached/developers

For general information about Memcached project see: http://memcached.org/

For more information on Memcached Cloud visit: http://garantiadata.com/memcached

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/a54a7b50c49a45085798c326aa12d723 "githalytics.com")](http://githalytics.com/RedisLabs/memcachedcloud-openshift-quickstart)
