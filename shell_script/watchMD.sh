#!/bin/bash
file_name="/home/yhy/shell_script/watchMD.log"
white_name=(python)
white_num=${#white_name[@]}


echo `date` = NUM = PID > $file_name
while true
do
	multi_name=(`ps aux | awk '{print $11}' | egrep "^\w{6}$"`)
	num=`pgrep -x "$multi_name" | wc -l`

	if [ 0 -lt $num ]
	then
		for proc_name in ${multi_name[@]}
		do
			calculate_num=0
			for no_kill in ${white_name[@]}
			do
				if [ $proc_name != $no_kill ]
				then 
					#break	
					#continue
				echo $proc_name $no_kill
					let calculate_num=calculate_num+1
				fi
			done
#			echo $calculate_num
		if [ $white_num -eq $calculate_num ]
		then
			pid=`pgrep -x "$proc_name"`
			ps -ef | grep $pid | grep -v grep >> $file_name
			echo == >> $file_name
			par=(`ps -ef | grep $pid | grep -v grep | awk '{print $3}'`)
			ps -ef | grep ${par[0]} | grep -v grep >> $file_name
			echo ==== >> $file_name
			kill $pid
			echo `date` =  $num  = $pid >> $file_name
		fi
		done
fi
 sleep 2
done

