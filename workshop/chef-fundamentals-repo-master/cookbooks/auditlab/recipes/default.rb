#
# Cookbook Name:: auditlab
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

control_group 'check smtp config' do
	control 'smtp port' do
    	it 'should be listening' do
    		expect(port(25)).to be_listening
    	end
	end
end
