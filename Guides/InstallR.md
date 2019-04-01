#### Installation Process for Mac OS

 * Go to [R Project Official Website](https://cloud.r-project.org/bin/macosx/)
 * Download the latest package.
 * Follow the installation guide and install it.

 ##### Installation Process for Mac OS using terminal

 * Open the terminal.
 * Type `brew tap homebrew/science` directs packages to utilze existing. 
 * Type `brew install Caskroom/cask/xquartz` installs required packages for the gfortran complier.
 * Type `brew install r` installs R.

 * To validate type `type r` if your output is this "r is /usr/local/bin/r", R is configured properly.

#### Installation Process for Linux (Ubuntu/ Redhat/ SUSE/ Debian)

 * Go to [R Project Official Website](https://cloud.r-project.org/bin/macosx/) follow the instructions.

##### Installation Process for Linux using terminal

 * Open the terminal
 * Type `apt-cache search "^r-.*" | sort` lists of available packages.
 * Type `apt-get update` updates all packages.
 * Type `apt-get install r-base r-base-dev` installs R.
 * To check if everything is working fine type `R` on the terminal and if the result is `R > ` that mean R is successfully installed. 


#### Installation Process for Microsoft Windows 

 * Go to [R Project Official Website](https://cloud.r-project.org/bin/windows/base/)
 * Click on the download link to download the setup.
 * Follow the setup and install R.

 #### Installation Process for Microsoft Windows using powershell/command prompt

 * Using Choco : `choco install r.project`
 * To validate it look for a R icon on the desktop or search for R on the Start Menu.