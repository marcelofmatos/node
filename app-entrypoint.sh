

if [ ! -f /usr/src/app/package.json ]; then
  
  echo " * empty /usr/src/app - cloning repository "
  git clone $URL_REPOSITORIO /usr/src/app

fi;

if [ -f /usr/src/app/.gitmodules ]; then

  echo " * downloading submodules "
  git submodule update --init --recursive  

fi;


exec "$@"
