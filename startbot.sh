chmod +x rustbot
chmod +x stockfish12
ls -l ./
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
echo "LD_LIBRARY_PATH"
echo $LD_LIBRARY_PATH
./rustbot
