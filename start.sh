if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrtest626/viz.git /viz
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /viz
fi
cd /viz
pip3 install -U -r requirements.txt
echo "Starting viz"
python3 bot.py
