wiressid = ENV["WMEGDOMAIN"]
wirepass = ENV["one11111"]
node_ip_address = node["node"]["ip_address"]
node_hostname = node["node"]["hostname"]
hosts = node["hosts"]
gateway = node['gateway']

template "/etc/dhcpcd.conf" do
        source "dhcpcd.conf.erb"
        variables(
                :node_ip_address => node_ip_address,
                :gateway => gateway
        )
        mode 0664
        user 'root'
        group 'netdev'
end

execute "set hostname" do
	command "hostnamectl set-hostname #{node_hostname}"
end

template "/etc/hosts" do
        source "hosts.erb"
        variables(
                :hostname => node_hostname,
		:hosts => hosts
        )
        mode 0644
        user 'root'
        group 'root'
end

template "/etc/ssh/ssh_config" do
        source "ssh_config.erb"
        mode 0644
        user 'root'
        group 'root'
end

execute "restart networking" do
        command "service networking restart"
end

package "nscd" do
	action :install
end
