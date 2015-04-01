#
# Cookbook Name:: vault
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

chef_gem 'chef-vault'
require 'chef-vault'

vault = ChefVault::Item.load('secrets', 'vaultuser')
hashed_password = vault['vaultuser'].crypt("$6$")

user 'vaultuser' do
	password hashed_password
	home '/home/vaultuser'
	supports :manage_home => true
	shell '/bin/bash'
	comment 'Chef Vault User'
end
