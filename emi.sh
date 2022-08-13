echo "Enter the amount of loan RS :"
read loan_amount
echo "Enter the rate of interest in %:"
read roi
echo "Enter the loan tenure in months :"
read tenure

rate=$(awk -v ROI=$roi 'BEGIN{print ROI/(12 * 100)}')
echo $rate
var1=$(awk -v RATE=$rate 'BEGIN{print 1 + RATE}')
echo $var1
var2=$(awk -v VAR1=$var1 -v TENURE=$tenure 'BEGIN{print VAR1 ^ TENURE}')
echo $var2
var3=$(awk -v LOANAMOUNT=$loan_amount -v RATE=$rate -v VAR2=$var2 'BEGIN{print LOANAMOUNT * RATE * VAR2}')
echo $var3
emi=$(awk -v VAR3=$var3 -v VAR2=$var2 'BEGIN{print VAR3/VAR2 - 1}')
