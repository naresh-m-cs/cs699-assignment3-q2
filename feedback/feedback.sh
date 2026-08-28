dir="./student_feedback.csv"

echo "student report for $dir" > ../reports/feedback_report.txt

echo "total number of feedback entries: $(wc -l < $dir)" >> ../reports/feedback_report.txt

echo "Feedback entries:" >> ../reports/feedback_report.txt

awk -F',' 'NR > 1 {print $1 ", " $2 ", " $3}' "$dir" >> ../reports/feedback_report.txt