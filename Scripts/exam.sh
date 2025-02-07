#!/bin/bash 



EndPoints=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")

EnreistererDansFichier(){

	echo "$1:$2" >> ~/exam_YOUSEF_Labib/exam_bash/sales.txt
}

# data de lancement 

echo " ---------------" >>~/exam_YOUSEF_Labib/exam_bash/sales.txt

echo "$(date)" >> ~/exam_YOUSEF_Labib/exam_bash/sales.txt

echo " ---------------" >>~/exam_YOUSEF_Labib/exam_bash/sales.txt




for endp in ${EndPoints[@]};do

	Reponse=$(curl -s "http://0.0.0.0:5000/$endp")
	EnreistererDansFichier $endp $Reponse


done 
# cron job :: # executer toutes les minutes de 7 heures à 21 heures durant les mois de Mars, Juin et Novembre, du lundi au vendredi
#* 7-21 * 3,6,11 1,5 /home/ubuntu/exam_YOUSEF_Labib/exam_bash/exam.sh 

echo "Cron Job" >> ~/exam_YOUSEF_Labib/exam_bash/cront.txt
