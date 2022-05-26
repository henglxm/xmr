i=1110
for s in $(cat ip.txt)
do
    let i++
    sudo redir :$i $s:1113
done
