#!/bin/zsh

VALID_SERVICES=(ServiceA ServiceB) 
SERVICES_TO_BUILD=("${VALID_SERVICES[@]}") 

# build binaries
for SERVICE in "${SERVICES_TO_BUILD[@]}"
do
	echo -e "\e[43m\e[90mBuilding service $SERVICE\e[0m"
  (cd ./Components/$SERVICE; node -v; npm install; pkg -t node14-macos-x64 --out-path ./build .)
done