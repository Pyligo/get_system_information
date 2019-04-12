echo "------server : "$1"------" >>info_$1.txt
echo >>info_$1.txt
echo "服务器型号" >>info_$1.txt
echo "#dmidecode|grep \"System Information\" -A9|egrep  \"Manufacturer|Product\"" >>info_$1.txt
dmidecode|grep "System Information" -A9|egrep  "Manufacturer|Product" >>info_$1.txt
echo >>info_$1.txt
echo "操作系统" >>info_$1.txt
echo "#cat /etc/redhat-release" >>info_$1.txt
cat /etc/redhat-release >>info_$1.txt
echo >>info_$1.txt
echo "CPU 信息" >>info_$1.txt
echo "#lscpu " >>info_$1.txt
lscpu >>info_$1.txt
echo >>info_$1.txt
echo "内存硬件信息" >>info_$1.txt
echo "#dmidecode -t memory" >>info_$1.txt
dmidecode -t memory >>info_$1.txt
echo >>info_$1.txt
echo "内存使用信息" >>info_$1.txt
echo "#cat /proc/meminfo" >>info_$1.txt
cat /proc/meminfo >>info_$1.txt
echo >>info_$1.txt
echo "内存插槽数及各个大小">>info_$1.txt
echo "# dmidecode|grep -A5 \"Memory Device\"|grep Size|grep -v Range" >>info_$1.txt
dmidecode|grep -A5 "Memory Device"|grep Size|grep -v Range >>info_$1.txt
echo >>info_$1.txt
echo "硬盘信息" >>info_$1.txt
echo "#fdisk -l">>info_$1.txt
fdisk -l >>info_$1.txt