#!/bin/bash

#
# Clone and setup folders
#
git clone https://github.com/pik-piam/mrtutorial.git /workspaces/mrtutorial
git clone --depth=1 https://github.com/pik-piam/magpie4.git /workspaces/package-magpie4
git clone https://github.com/magpiemodel/magpie.git /workspaces/magpie
cd /workspaces/magpie
rm .codeCheck
wget https://raw.githubusercontent.com/magpiemodel/magpie/refs/heads/develop/.codeCheck
git add .codeCheck
git config user.email "patrickr+codespacesetup@pik-potsdam.de"
git config user.name "Workshop Codespace Setup"
git commit -m "Adds exception for codeCheck"
git config --unset user.email
git config --unset user.name
cd /workspaces

#
# Setup MAgPIE
#
cd /workspaces/magpie
Rscript -e '2 + 2; "dummy evaluation to trigger renv install"'
# Next step is important to enable validation pdf generatoin
# as the generation of warnings was only fixed in knitr >= 1.51.5
Rscript -e 'renv::install("knitr@1.51.7", repos = c(
  yihui = "https://yihui.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))'

mkdir output
cd output
wget --user='nr8AcZ2jBsGE6LX' --password='wfeasdv23a'   "https://cloud.pik-potsdam.de/public.php/webdav/" -O Default.zip
unzip Default.zip && rm Default.zip

wget --user='y5t9PaFowjWqQzS' --password='wfeasdv23a'   "https://cloud.pik-potsdam.de/public.php/webdav/" -O PHD.zip
unzip PHD.zip && rm PHD.zip


#
# Setup mrtutorial
#
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
