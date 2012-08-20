include_recipe "java"

bash "install_controller" do
    code <<-EOH
        cd /opt
        wget http://192.168.2.101.xip.io/~dinomite/controller-svc-dist.tar.gz
        tar zxf controller-svc-dist.tar.gz
    EOH
    notifies :start, "service[bp-controller-svc]"
end

runit_service "bp-controller-svc" do
    action [ :enable, :start ]
end
