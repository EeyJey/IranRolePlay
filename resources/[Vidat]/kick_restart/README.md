# README KICK_RESTART_V2.4
put the resource folder into your 
> resources 

folder. clear the -master and v.NUMBER from the foldername.
if you want to translate this code, go into the server.lua
# setup resource

paste "start kick_restart" into your server.cfg.

# setup permissions

**paste this into your server.cfg on the very top**

add_ace group.restart restart.cmds allow  ##this group is able to use the /beginrestart command.


add_principal identifier.steam:HEXID group.restart ##this will give a specified person permissions to the restart group. 


##You need to paste your Steam HexID into "HEXID"
## everything else can get asked in the original topic.
