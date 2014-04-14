#
# Cookbook Name:: chef_app_screenshot
# Recipe:: default
#
# Copyright (C) 2014 Privacy Through Choice
# 
# All rights reserved - Do Not Redistribute
#
case node.platform_family
when "debian"
  include_recipe 'apt'
  package "imagemagick"
when "rhel"
  include_recipe 'yum'
  package "ImageMagick"
end

include_recipe 'phantomjs'
include_recipe 'git'


ohai 'reload_passwd' do
  action :nothing
  plugin 'passwd'
end

user 'screenshot' do
  system true
  notifies :reload, 'ohai[reload_passwd]', :immediately
end

directory '/opt/screenshot' do
  user 'screenshot'
  group 'screenshot'
  mode 0755
end

git '/opt/screenshot/app' do
  repository 'https://github.com/PrivacyThroughChoice/app_screenshot'
  revision 'master'
  action :sync
  user 'screenshot'
  group 'screenshot'
end

