# adds first time script to bashrc
echo 'export PATH="$PATH:$GEM_HOME/bin:$HOME/.rvm/bin" && rvm rvmrc warning ignore /vagrant/.rvmrc'
echo 'export rvm_trust_rvmrcs_flag=1 && cd /vagrant && bundle install && ruby provision/first_time.rb' >> /home/vagrant/.bashrc
