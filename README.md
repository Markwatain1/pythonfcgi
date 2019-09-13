# pythonfcgi
This playbook will work only with ansible versions 2.5.1 and later

1) Clone this repo to /root directory on your ansible controller

2) Enter to pythonfcgi directory

3) Configure ansible for using /root/pythonfcgi/myhosts as inventory file

4) In file wsgiautomate.yml  change:
on line 240 "50-cloud-init.yaml" to your network configuration file name
on line 241 "134.209.189.7/20" to current ip and netmask of your target host
on line 248 " 134.209.176.1" to current gateway of target host
on line 247 "50-cloud-init.yaml" to your network configuration file name

5) Run playbook wsgiautomate.yml with --ask-sudo-pass option

If you`ll see error message 
" FAILED! => {"msg": "Using a SSH password instead of a key is not possible because Host Key checking is enabled and sshpass does not support this.  
Please add this host's fingerprint to your known_hosts file to manage this host."
- you need to add host key of target host in  known_hosts file. You can do it manually, or you can just connect via ssh to target host from ansible controller
