######################################
# Reference Link for Salt Stack Setup:
######################################

Offcial link from Salt "https://docs.saltproject.io/salt/install-guide/en/latest/" provides all pre-req's and setup steps to install and configure Salt on all support Operating Systems

#####################################
# Useful Salt Key Management Commands
#####################################

# This command list of all public keys

salt-key -L

# This command will accept a specified pending public key against provided Minion

salt-key –a <Minion Name>

# This command will accept all pending key requests

salt-key –A

# This command will delete a specified key against provided Minion

salt-ket –d <Minion Name> 

# This command will delete all pending key requests

salt-key –D

# This command will reject a specified pending public key against provided Minion

salt-key –r <minon_name>

# This command will reject all pending key requests

salt-key –R

# This command will print the specified key’s fingerprint

salt-key –f
