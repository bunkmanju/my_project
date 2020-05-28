#!/bin/bash
clear
file_count=`ls -a | wc -l`
guess_count()
{
      echo -n "Guess, the number of files in the current directory: "
      read fcount

      if ! [[ "$fcount" =~ ^[0-9]+$ ]]
      then
             echo "Please enter the count as integers only"
      
      elif [ $fcount -eq $file_count ]
      then
               echo "Congrats, you guessed it correct!!!"

      elif [ $fcount -lt $file_count ]
      then
               echo "Try again, Guess is too low!!!"

      elif [ $fcount -gt $file_count ]
      then
               echo "Try again, Guess is too high!!!"
      fi
}
while true
do  
   
    guess_count

done
