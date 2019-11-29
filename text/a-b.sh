#!/bin/bash
outFile='../out/b.txt'
inputFile=a.txt
if [ -f $outFile ]; then
{
    rm $outFile
}
fi
##caculate the line size of file a.txt
lineSize=$(sed -n '$=' ${inputFile})
echo $lineSize
cp b.txt $outFile
insertLocation=116
for ((i=1;i<=$lineSize;i++))
do
    let ci=$insertLocation+$i-1
    sed -n "${i}p" ${inputFile} | xargs -I {} sed -i "${ci}i{}" $outFile 
done
#cat a.txt | xargs -I {} sed -i "${insertLocation}i{}" $outFile
#config=$(cat a.txt | xargs -I {} echo {})
#echo $config
#sed -i "${insertLocation}i${config}" $outFile