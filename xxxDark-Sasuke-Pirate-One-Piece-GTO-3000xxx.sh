#!bin/bash

i=1

function menu {
    echo -e "\033[90m#-----------------#"
    echo -e "\033[90m#      \033[0mMENU       \033[90m#"
    echo -e "\033[90m#-----------------#\033[0m"
    echo "1 - Parametre"
    
    # Identification
    if [ $i = 2 ];then
        echo "2 - S'identifier"
    else
        echo -e "2 - \033[90mS'identifier \033[0m"
    fi

    # Secure Pirate 3000
     if [ $i = 3 ];then
         echo -e "3 - SecurePirate3000"
     else
         echo -e "3 - \033[90mSecurePirate3000 \033[0m"
     fi

    # Pirate
      if [ $i = 4 ];then
          echo "4 - Pirate"
      else
          echo -e "4 - \033[90mPirate \033[0m"
      fi

    read choice

    case $choice in
        1) parametre;;
         2) identification;;
          3) secure;;
           4) pirate;;
            *) 
                echo "Sorry, I don't understand"
                sleep 2
                clear
                menu
                ;;
    esac
}

function parametre {
    caseFunction;
}

function identification {
    if [ $i = 2 ];then
        echo "Dans un souci de sécurité, nous allons vous associé a un mot de passe unique cryptée conformément aux normes en vigeur"
        sleep 2
        read ans1
        sleep 3
        echo ".."
        sleep 2
        echo "...."
        sleep 3
        echo "oui?"
        read ans2
        sleep 2
        echo "..."
        sleep 2
        echo ".. ..Ah oui le mot de passe!!"
        sleep 1
        echo "tu en veux un du coup? (oui/non)"
        read reponse
        while [ -z $reponse ] || [ $reponse != 'oui' ]
        do
                echo "bah t as pas le choix!"
                sleep 1
                read -p "t'en veux un du coup? : " reponse
        done

        echo "vous avez dit 'oui', validez vous etre l'auteur de cette réponse? (oui/non)"
        read reponse2
        if [ $reponse2 != 'oui' ]
        then
                sleep 1
                echo "faille de sécuité détecté!"
                sleep 2
                echo ".."
                echo "..."
                echo "..bonjour nouvel utilisateur!"
        else
        sleep 2
                echo "identité confirmé!"
        fi
        sleep 1
        echo "initialisation du mot de passe.."
        echo "bip"
        echo "bip bip"
        echo "bip"
        sleep 2
        echo "bip"
        sleep 1
        echo "veuillez entrez un mot de passe!"
        read mdp
        echo -e "\033[5m \033[45m $mdp \033[0m , t appel ca un mot de passe?"
        echo "t'avais vraiment besoin de moi!"
        sleep 1
        echo "t'en a pas un plus safe?"
        read mdp2
        echo -e "\033[5m \033[45m $mdp2 \033[0m, hmm ouai tu peux faire mieux!"
        echo "Premier garant de sécuité : Le mot de passe doit commencé par JAIML"
        read mdp3
        sleep 1
        echo "..."
        sleep 1
        echo "2eme garant de sécurité : Mot de passe incomplet, dans un souci de sécutité le mot de passe doit se terminer par ECACA"
        read caca

        while [ -z $caca ] || [ $caca != "JAIMLECACA" ]
        do
        echo ".."
        sleep 1
        echo "..."
        echo "mot de passe incorrect. Veuillez ne rien mettre entre les 2 garants de sécuité!"
        read caca
        done
        sleep 1
        echo ".."
        sleep 1
        echo "..."
        echo "."
        echo "hah hahah! ah .. ahhhh...les humains..."
        echo "mot de passe unique enregistré!"
        i=$((i+1))
        sleep 2
        clear; menu
    else
        echo "Veuillez deverouiller cette fonction dans les parametres"; sleep 2; clear; menu
    fi
}

function secure {
    if [ $i = 3 ];then
        
        echo "pirate3000 est le dernier module dernier cri que seul les vrai choisissent"
        sleep 1
        echo "une sécurité vpn qui s'occupent de votre anonymat toute votre vie!"
        sleep 1
        echo "ou jusqu'a ce qu'on fasse faillite!"
        sleep 1
        echo ".."
        sleep 1
        echo "c'est parti!"
        sleep 1
        echo "Si vous êtes parvenu jusqu'a la, bravo! Mais surtout vous devez disposer d'un mot de passe unique conforme au plus hautes normes!"
        sleep 1
        read -sp "Veuillez le renseigner : " motdp
        while [ -z $motdp ] || [ $motdp != 'JAIMLECACA' ]
        do
                echo "nop! Souviens toi des 2 garants de sécurité..et des majuscules!!"
                sleep 1
                read -sp "j'attends : " motdp
        done
        echo "ahahhah.."
        sleep 1
        echo "hum..hum.."
        sleep 1
        echo "bip"
        sleep 1
        echo "bip bip"
        sleep 1
        echo "Ok!"
        sleep 1
        echo ".."
        sleep 1
        echo "hmmff hahahah!"
        sleep 1
        echo "pardon pardon, allons-y!"
        sleep 1
        echo "votre ip: "
        sleep 1
        curl http://ifconfig.me/ip
        sleep 1
        echo " "
        echo "j'ai meme pas eu a chercher, heureusement je vais remédier a ca!"
        sleep 2
        echo "envoi de vos informations au plus offrants.."
        sleep 1
        echo "hum.. je veux dire, masquage de l 'ip en cours.."
        sleep 1
        echo "."
        sleep 1
        echo ".."
        sleep 1
        echo "..."
        sleep 2
        echo "...."
        sleep 3
        echo "done!"

        i=$((i+1))
        clear; menu
    else
        echo "Veuillez d'abord vous identifiez"; sleep 2; clear; menu
    fi
}

function pirate {
    if [ $i = 4 ];then
        echo "Tout est prêt pour la grande finale"
        sleep 1
        echo "a une exception pret!"
        sleep 1
        read -sp "mot de passe : " motdpa
        while [ -z $motdpa ] || [ $motdpa != 'JAIMLECACA' ]
        do
                echo "nop! Souviens toi des 2 garants de sécurité..et des majuscules!!"
                sleep 1
                read -sp "j'attends : " motdpa
        done
        echo "mhhphh.."
        sleep 1
        echo "je m'en lasserai pas!"
        sleep 1
        echo "c'est parti!"
        sleep 1
        echo "qui voulez vous hack?"
        echo "1)doogle 2)naza 3)facebouc"
        read who
        case $who in
        1) who="doogle" ;;
        2) who="naza";;
        3) who="facebouc";;
        esac
        echo "ok"
        echo "qu'est ce qu'on leur fait?"
        echo "1) ransomware 2) trojan 3) sql-injection"
        read hack
        case $hack in
        1) hack="ransomware";;
        2) hack="trojan";;
        3) hack="sql-injection";;
        esac
        echo "intéressant"
        sleep 1
        echo "au fait!"
        echo "redonne ton mdp vite fait!"
        read -sp "mot de passe : " motdpas
        while [ -z $motdpas ] || [ $motdpas != 'JAIMLECACA' ]
        do
                echo "nop! Souviens toi des 2 garants de sécurité..et des majuscules!!"
                sleep 1
                read -sp "j'attends : " motdpas
        done
        echo "hmphh.."
        sleep 1
        echo "maintenant que tout est ok, il me faut ton prénom (pas de pseudo)"
        read prenom
        echo "cool, cool! et ton nom?"
        read nom
        echo "yes parfait parfait"
        sleep 1
        echo " | loading."
        sleep 0.5
        clear

        echo " / loading.."
        sleep 0.5
        clear

        echo " - loading..."
        sleep 0.5
        clear

        echo " \ loading...."
        sleep 0.5
        clear

        echo " | loading....."
        sleep 0.5
        clear

        echo " / loading...."
        sleep 0.5
        clear

        echo " - loading..."
        clear
        echo " \ loading.. "
        sleep 0.5
        clear

        echo " | loading."
        sleep 1
        clear

        echo "résumons"
        sleep 2
        echo "tu t appel $prenom $nom, tu veux pirater $who avec $hack et ton ip, avant que tu me demandes de la masquer, était: "
        curl http://ifconfig.me/ip
        echo " tu confirmes?"
        read confirm
        if [ $confirm == "oui" ]
        then
        echo "oh l'innocent!..enfin.."
        else
        echo "je prends ca pour un oui!"
        fi
        echo "j'envoi tout ca a la police petit chenapan, j'ai été concu pour infiltrer et dénoncer les réseaux de pirates et t'es tombé dans mon piège!"
        echo "la prochaine fois t'apprendera a coder au lieu de te servir d'outils déja tout fait, noob!"

        i=1
    else
         echo "Veuillez sécuriser votre appareil"; sleep 2; clear; menu
    fi
}


function caseFunction {
    clear
    echo -e "1)option   2)systeme   3)parametre"
    read choice
    case $choice in
        1) option;;
         2) systeme;;
          3) parametreCase;;
           4) clear; menu;;
            *) echo "error"; sleep 1; clear; menu; clear; menu;;
    esac
}

    function option {
        clear
        echo -e "1)option avancé 2)préférence option 3)autre option 4)exit"
        read choice
        case $choice in
            1) random ;; 2) random;; 3) random ;;4) clear; menu;;
            *) echo "error"; sleep 1; clear; menu; clear; menu;;
        esac
    }
    
 
    function systeme {
        clear
        echo -e "1)systeme avancé 2)préférence systeme 3)autre systeme 4)exit"
        read choice
        case $choice in
            1) random;; 2) random;; 3) random ;;4) clear; menu;;
            *) echo "error"; sleep 1; clear; menu; clear; menu;;
        esac
    }
 
    function parametreCase {
        clear
        echo -e "1)parametre avancé 2)préférence parametre 3)autre parametre 4)exit"
        read choice
        case $choice in
            1) random;; 2) random;; 3) random ;;4) clear; menu;;
            *) echo "error"; sleep 1; clear; menu; clear; menu;;
        esac
    }

    function random {
        clear
        tab=( [0]="systeme" [1]="option" [2]="parametre" [3]="préférence" )
        tab2=( [0]="avancé" [1]="global" [2]="général" )
        tab3=( [0]="admin" [1]="principal" [2]="secondaire" )
        r=$(( $RANDOM % 4 ));
        r2=$(( $RANDOM % 3 ));
        r3=$(( $RANDOM % 3 ));
 
        s=$(( $RANDOM % 4 ));
        s2=$(( $RANDOM % 3 ));
        s3=$(( $RANDOM % 3 ));
 
        t=$(( $RANDOM % 4 ));
        t2=$(( $RANDOM % 3 ));
        t3=$(( $RANDOM % 3 ));
 
        echo -e "1)${tab[$r]} ${tab2[$r2]} ${tab3[$r3]} 2)${tab[$s]} ${tab2[$s2]} ${tab3[$s3]} 3)${tab[$t]} ${tab2[$t2]} ${tab3[$t3]} 4)exit"
        read choice
        case $choice in
            1) randomWinLose;;
            2) randomWinLose;;
            3) randomWinLose ;;
            4) clear; menu;;
                *) echo "error"; sleep 1; clear; menu; clear; menu;;
        esac
    }

    function randomWinLose {
        r=$(( $RANDOM % 4 ))
        if [ $r = 1 ]; then
           win
        else
           error
        fi
    }

    function error {
        echo "access denied"
        sleep 2
        clear
        menu
    }

    function win {
        echo "succes"
        sleep 2
        clear
        i=$((i+1))
        menu
    }
 clear
 secure