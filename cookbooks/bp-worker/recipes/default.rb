include_recipe "java"

bash "install_worker" do
    code <<-EOH
        cd /opt
        wget http://192.168.2.101.xip.io/~dinomite/worker-svc-dist.tar.gz
        tar zxf worker-svc-dist.tar.gz
    EOH
    notifies :start, "service[bp-worker-svc]"
end

runit_service "bp-worker-svc" do
    action [ :enable, :start ]
end
