# aliases command linux terminal + aliase meteo
alias sl="sudo mousepad /etc/apt/sources.list"
alias install='sudo apt install'
alias dpkg='sudo dpkg -i *.deb'
alias configure='sudo dpkg --configure -a'
alias reinstall='sudo apt-get install --reinstall'
alias finstall='sudo apt -f install'
alias update='sudo apt update'
alias upgrade='sudo apt dist-upgrade'
alias dupgrade='sudo apt update && sudo apt dist-upgrade'
alias fix='sudo apt-get --fix-broken install'
alias fixapt='sudo rm /var/lib/apt/lists/* -vf'
alias remove='sudo apt-get remove'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get remove --purge'
alias agp='sudo apt-get autoremove --purge'
alias add='sudo add-apt-repository'
alias search='apt-cache search'
alias clean='sudo apt-get clean'
alias autoclean='sudo apt-get autoclean'
alias sinstall='sudo apt-get install --no-install-recommends'
# aliase meteo terminal change city "Paris" and language "fr"
alias meteo="curl wttr.in/Paris?lang=fr"
alias moon="curl wttr.in/Moon"
alias lune="curl wttr.in/Moon"
