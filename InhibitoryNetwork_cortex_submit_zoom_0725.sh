#!/bin/bash

module load gcc
gcc InhibitoryNetwork_cortex_0712.c -lm -o InhibitoryNetwork_cortex_0712.o

count=2254

for rep in 1 2 3 4
do

for state in 0 1
do

for gsynstep in .25
do

for Iappstep in 5
do

for sdev in 3 6 12
do

for probii in .08 .12 .16
do

for Iappmin in 150
do

for Iappmax in 400
do





for gsynmin in 0.25
do

for gsynmax in 1.1
do

count=$(($count+1))

echo "Creating InhibitoryNetwork_cortex.sh file number=$count"
sed -e "s/gsynmin/$gsynmin/g" -e "s/gsynmax/$gsynmax/g" -e "s/gsynstep/$gsynstep/g" -e "s/Iappmin/$Iappmin/g" -e "s/Iappmax/$Iappmax/g" -e "s/Iappstep/$Iappstep/g" -e "s/probii/$probii/g" -e "s/sdev/$sdev/g" -e "s/count/$count/g" -e "s/state/$state/g" InhibitoryNetwork_cortex.sh > InhibitoryNetwork_${count}.sh

echo "Submitting InhibitoryNetwork_${count}.sh"
sbatch -J IN_${count} InhibitoryNetwork_${count}.sh

done
done

for gsynmin in 1.25
do

for gsynmax in 2.1
do

count=$(($count+1))

echo "Creating InhibitoryNetwork_cortex.sh file number=$count"
sed -e "s/gsynmin/$gsynmin/g" -e "s/gsynmax/$gsynmax/g" -e "s/gsynstep/$gsynstep/g" -e "s/Iappmin/$Iappmin/g" -e "s/Iappmax/$Iappmax/g" -e "s/Iappstep/$Iappstep/g" -e "s/probii/$probii/g" -e "s/sdev/$sdev/g" -e "s/count/$count/g" -e "s/state/$state/g" InhibitoryNetwork_cortex.sh > InhibitoryNetwork_${count}.sh

echo "Submitting InhibitoryNetwork_${count}.sh"
sbatch -J IN_${count} InhibitoryNetwork_${count}.sh

done
done

for gsynmin in 2.25
do

for gsynmax in 3.1
do

count=$(($count+1))

echo "Creating InhibitoryNetwork_cortex.sh file number=$count"
sed -e "s/gsynmin/$gsynmin/g" -e "s/gsynmax/$gsynmax/g" -e "s/gsynstep/$gsynstep/g" -e "s/Iappmin/$Iappmin/g" -e "s/Iappmax/$Iappmax/g" -e "s/Iappstep/$Iappstep/g" -e "s/probii/$probii/g" -e "s/sdev/$sdev/g" -e "s/count/$count/g" -e "s/state/$state/g" InhibitoryNetwork_cortex.sh > InhibitoryNetwork_${count}.sh

echo "Submitting InhibitoryNetwork_${count}.sh"
sbatch -J IN_${count} InhibitoryNetwork_${count}.sh

done
done

done
done
done
done
done
done
done
done
