if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Saravanakrish97/Extrabot.git /Extrabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Extrabot
fi
cd /Extrabot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
