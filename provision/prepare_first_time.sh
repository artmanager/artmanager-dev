# adds first time script to bashrc
echo 'export rvm_trust_rvmrcs_flag=1 && cd /vagrant && bundle install && ruby provision/first_time.rb && cd ~ && ls' >> /home/vagrant/.bashrc