
dir=$1

cat $dir

echo "student report for $dir" >> ../reports/student_report.txt
echo "total number of students: $(wc -l < $dir)" >> ../reports/student_report.txt

echo "Number of students in CSE DEPT: $(grep -c 'CSE' $dir)" >> ../reports/student_report.txt
echo "Number of students in EE DEPT: $(grep -c 'EE' $dir)" >> ../reports/student_report.txt
