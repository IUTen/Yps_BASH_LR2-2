#!/bin/bash

log_permanent=~/.log_lab3
log_temp=/tmp/.log_lab3

if ! [ -d $log_permanent ] ;
then
	mkdir $log_permanent	
fi

if ! [ -d $log_temp ] ;
then
	mkdir $log_temp
fi

# Создание файла лога, если его нет
if ! [ -f $log_permanent/log.txt ];
then
	echo $((0)) > $log_permanent/log.txt
fi

# Создание файла лога, если его нет
if ! [ -f $log_temp/log.txt ] ;
then
	echo $((0)) > $log_temp/log.txt
fi

#Обновление количества запусков с момента установки
count_run_permanent=$(cat $log_permanent/log.txt)
echo $(( count_run_permanent + 1 )) > $log_permanent/log.txt

#Обновление количества запусков с момента запуска системы
count_run_temp=$(cat $log_temp/log.txt)
echo $(( count_run_temp + 1 )) > $log_temp/log.txt

#Вывод на экран
echo "Кол-во запусков: $((count_run_permanent+1))"
echo "Кол-во запусков с запуска системы: $((count_run_temp+1))"
 
