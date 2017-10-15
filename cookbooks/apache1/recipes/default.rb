#
# Cookbook:: apache1
# Recipe:: default
#
#
# Copyright:: 2017, The Authors, All Rights Reserve

	if node['platform_family'] == "rhel"
		package = "httpd"
	elsif node['platform_family'] == "debian"
		package = "apache2"
	end

package 'apache' do
 package_name package
 action :install
end

service 'apache1' do
service_name 'httpd'
action [:enable, :start]
end

