if [ `nvm current` == system ]; then
  rm ~/.nodejs /opt/nodejs -rf
  nvm install lts/* --use
  nvm alias default lts/*
fi

cat ~/temp-custom-scripts/main.sh > ~/.bashrc
rm ~/temp-custom-scripts -rf

npm i -g npm@latest live-server gitignore

clear