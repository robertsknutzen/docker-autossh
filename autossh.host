#!/bin/bash
#
# Example script to start up tunnel with autossh.
#
# This script will tunnel 2200 from the remote host
# to 22 on the local host. On remote host do:
#     ssh -p 2200 localhost
#
# $Id: autossh.host,v 1.6 2004/01/24 05:53:09 harding Exp $
#Modified June 12thish 2016

#This is now in config
#ID=username
#HOST=hostname.your.net
#JABBER_LOCAL_PORT=
#JABBER_REMOTE_PORT=

source autossh.config

#if [ "X$SSH_AUTH_SOCK" = "X" ]; then
#    eval `ssh-agent -s`
#    ssh-add /autossh/keys/autosshkey 
#fi

#AUTOSSH_POLL=600
#AUTOSSH_PORT=20000
#AUTOSSH_GATETIME=30
#AUTOSSH_LOGFILE=$HOST.log
#AUTOSSH_DEBUG=yes 
#AUTOSSH_PATH=/usr/local/bin/ssh
export AUTOSSH_POLL AUTOSSH_LOGFILE AUTOSSH_DEBUG AUTOSSH_PATH AUTOSSH_GATETIME AUTOSSH_PORT

echo "tryna forward ports" 
autossh -2 -fN -M 21000  $PORTS ${ID}@${HOST} -p $SSH_PORT -i $KEY_FILE 
