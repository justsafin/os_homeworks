sudo cgcreate -g cpu,cpuacct:stress_group
sudo cgset -r cpu.cfs_quota_us=50000 stress_group
sudo cgexec -g cpu,cpuacct:stress_group stress --cpu 2 --timeout 30s

