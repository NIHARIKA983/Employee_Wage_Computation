#!/bin/bash -x

echo "welcome to employee wage computation"

isPresent=1;

randomCheck=$((RANDOM%2));

if [[ $isPresent -eq $randomCheck ]]
then
  echo "Employee is Present"
else
  echo "Employee is Absent"
fi

#To Calculate Daily Employee Wage

isPresent=1;
randomCheck=$((RANDOM%2));

if [[ $isPresent -eq $randomCheck ]]
then
   empRatePerHr=20;
   empHrs=8;
   salary=$(($empHrs*$empRatePerHr))
else
   salary=0;
fi


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3))

if [[ $isFullTime -eq $randomCheck ]]
then
  empHrs=8;
elif [[ $isPartTime -eq $randomCheck ]]
then
  empHrs=4;
else
  empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3))


case $empCheck in
       $isFullTime)
           empHrs=8;;
       $isPartTime)
           empHrs=4;;
       *)
           empHrs=0;;
esac
salaray=$(($empHrs*$empRatePerHr));

totalSalary=0;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
   empCheck=$((RANDOM%3));
          case $empCheck in
                 $isFullTime)
                     empHrs=8;;
               $isPartTime)
                     empHrs=4;;
               *)
                     empHrs=0;;
         esac
   salary=$(($empHrs*$empRatePerHr));
   totalSalary=$(($totalSalary+$salary));
done


MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
  ((totalWorkingDays++))
  empCheck=$((RANDOM%3));
  case $empCheck in
    $isFullTime)
       empHrs=8;;
    $isPartTime)
       empHrs=4;;
    *)
       empHrs=0;;
  esac

  totalEmpHrs=$(($totalEmpHrs*$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));


#To Get Work Hours
getWorkHours( ) {
    case $empCheck in
          $isPartTime)
              workHours=4;;
          $isFullTime)
              workHours=8;;
          *) workHours=0;;
    esac
    echo $workHours;
}
getWorkHours


#To Store Daily Wage Along with Total Wage
#calculate wage for each day
totalWorkingHours=0
totalWorkingDays=0
totalWage=0
while [[ $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHours=$( getWorkHours $((RANDOM%3)) );
   dailyWage=$((workHours*EMP_RATE_PER_HR));
   totalWorkingHours=$((totalWoringHours+workHours));
   totalWage=$((totalWage+dailWage));
done

echo "total wage-" $totalWage
echo "daily wage-" $dailyWage
