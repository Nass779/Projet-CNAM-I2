echo "
# ___________________________ #
# ___ Stopper Fabric v1.1 ___ #
# ___________________________ #
"
cd /home/ptracea/fabric-dev-servers/fabric-scripts/hlfv1/composer
docker-compose stop 
wait 

echo "
# __________________________________________ #
# ___ Démarrer le réseau Composer v0.0.2 ___ #
# __________________________________________ #
"
composer network stop --networkName tutorial-network --networkVersion 0.0.2 --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --file networkadmin.card
wait

echo "
# _________________________________________________________________ #
# ___ Arréter le serveur REST Composer v0.19  (localhost:3000) ___ #
# _________________________________________________________________ #
"

fuser -k 3000/tcp
wait

echo "
# _________________________________________________________________ #
# ___ Arréter l'application Front-End Angular (localhost:4200) ___ #
# _________________________________________________________________ #
"
fuser -k 4200/tcp
wait

echo "
# _____________________________________________________ #
# ___ Arréter composer-playground (localhost:8080) ___ #
# _____________________________________________________ #
"
fuser -k 8080/tcp
wait

echo "
# _________________________ #
# ___ Arréter RabbitMQ ___ #
# _________________________ #
"
docker stop package-traceability-rabbit
wait

echo "                                                                                                                                                      



                                                                                                                                                                     
██████╗  █████╗  ██████╗██╗  ██╗ █████╗  ██████╗ ███████╗
██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔════╝ ██╔════╝
██████╔╝███████║██║     █████╔╝ ███████║██║  ███╗█████╗  
██╔═══╝ ██╔══██║██║     ██╔═██╗ ██╔══██║██║   ██║██╔══╝  
██║     ██║  ██║╚██████╗██║  ██╗██║  ██║╚██████╔╝███████╗
╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝

████████╗██████╗  █████╗  ██████╗███████╗ █████╗ ██████╗ ██╗██╗     ██╗████████╗██╗   ██╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║██║     ██║╚══██╔══╝╚██╗ ██╔╝
   ██║   ██████╔╝███████║██║     █████╗  ███████║██████╔╝██║██║     ██║   ██║    ╚████╔╝ 
   ██║   ██╔══██╗██╔══██║██║     ██╔══╝  ██╔══██║██╔══██╗██║██║     ██║   ██║     ╚██╔╝  
   ██║   ██║  ██║██║  ██║╚██████╗███████╗██║  ██║██████╔╝██║███████╗██║   ██║      ██║   
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝   

                                                                                         
                                                                                                                                                      
# ----------------------------------------------------- #
# -         PACKAGE TRACEABILITY IS STOPPED           - #
# ----------------------------------------------------- #

"


