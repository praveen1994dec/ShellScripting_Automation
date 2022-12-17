#!/bin/bash
ONE=14d

Fourteendaysold=`date -v -${ONE}`
#Fourteendaysold=`date -d "$dataset_date - $ONE days" +%F`
echo $Fourteendaysold

TWO=7d
sevendaysold=`date -v -${TWO}`
#sevendaysold=`date -d "$dataset_date - $TWO days" +%F`
echo $sevendaysold
#date1=`echo $sevendaysold | sed 's/-//g’`
#date2=`echo $Fourteendaysold | sed 's/-//g'`
echo $Fourteendaysold and $sevendaysold are obtained 

