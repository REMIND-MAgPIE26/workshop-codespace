#!/bin/bash

#
# Clone and setup folders
#
git clone https://github.com/pik-piam/mrtutorial.git /workspaces/mrtutorial
git clone https://github.com/magpiemodel/magpie.git
cd magpie
rm .codeCheck
wget https://raw.githubusercontent.com/magpiemodel/magpie/refs/heads/develop/.codeCheck
git add .codeCheck
git commit -m "Adds exception for codeCheck"
cd ..

cd /workspaces/magpie
Rscript -e '2 + 2; "dummy evaluation to trigger renv install"'

cd /workspaces/mrtutorial
Rscript -e 'pak::pak(".")'


#
# Setup madrat folder
#
mkdir /workspaces/madrat-main-folder

echo "" >> ~/.bashrc
echo "export MADRAT_MAINFOLDER='/workspaces/madrat-main-folder'" >> ~/.bashrc
echo "" >> ~/.bashrc

# Also set the mainfolder for the current session already,
# as the .bashrc is only loaded later.
MADRAT_MAINFOLDER='/workspaces/madrat-main-folder'
