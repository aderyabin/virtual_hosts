#
# Cookbook Name:: virtual_hosts
# Recipe:: default
#
# Copyright 2013, Andrey Deryabin
#
# All rights reserved - Do Not Redistribute
#

Array(node[:virtual_hosts]).each do |identifier, app|
  virtual_hosts identifier do
    server_name app[:server_name]
    server_aliases app[:server_aliases]
    docroot app[:docroot]
  end
end
