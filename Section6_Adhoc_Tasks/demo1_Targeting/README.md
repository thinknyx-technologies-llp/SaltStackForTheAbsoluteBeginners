#############################
# Targeting Minions
#############################

These examples are based on the minion names used in our course. Kindly change the minion names as per your requirements.

Note: For testing kindly replace "module.function" with "test.ping", where test is a module and ping is a function

# To target all minions:

- salt '*' module.function 

# To target a specific minion:

- salt 'minion-one' module.function  

# Flexible targeting using Globbing:

- salt 'minion-t*' module.function

# To target based on specific IP or IPs:

- salt -S '192.168.1.100' module.function 

# To target a List of minions:

- salt –L ‘minion-one, minione-four' module.function 

# To target based on group of minions i.e nodegroup:

- salt -N 'ubuntu-minions' module.function 

# Targeting based on Grains:

- salt -G 'os:Ubuntu' module.function 

# To target combination of multiple criteria:

- salt -C 'G@os:Ubuntu or minion-one' module.function 
