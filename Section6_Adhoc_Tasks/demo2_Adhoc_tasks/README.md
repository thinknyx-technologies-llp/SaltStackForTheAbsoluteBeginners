#####################################################
# Adhoc demos demonstrated in the course:
#####################################################

# Uptime of our minion

- salt '*' cmd.run 'uptime' 

# To check the os-release

- salt '*' cmd.run 'cat /etc/*release' 

# Create a user named 'new-user'

- salt '*' user.add new-user  
- salt '*' user.list_users

# Create a file named 'example.txt'

- salt '*' file.touch /tmp/example.txt 

# Create a directory named   'example_directory' with some customizations

- salt ‘*’ file.mkdir /tmp/example_directory mode=777 user=new_user group=new_user 

# Install a 'vim' package on all minions

- salt '*' pkg.install vim  

# Check the status of the 'salt-minion' service

- salt '*' service.status salt-minion

# Dynamically retrieve the 'id' configuration from the '/etc/salt/minion' file on all minions

- salt '*' config.get  id 

# Check our minions system information (Grains)

- salt '*' grains.item os 
