bash "update_apt" do
    code <<-EOH
        sudo apt-get update
    EOH
    notifies :restart, "service[bp-controller-svc]"
end

package "openjdk-7-jdk" do
    action :install
end
