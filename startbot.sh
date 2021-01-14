chmod +x rustbot
ls -l ./
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
echo "LD_LIBRARY_PATH"
echo $LD_LIBRARY_PATH
./rustbot
