#
# ~/.bashrc
#

# If not running interactively, don't do anything

#Message de bienvenue 
echo "Bienvenue $USER !"
[[ $- != *i* ]] && return

#les alias

alias ls='ls -a --color=auto'
alias ll='ls -al'
alias c='clear'
alias grepc='grep --color=always'
alias grep='grep --color=auto'



PS1='[\u@\h \W]\$ '

#Creer un fichier et ouvrir avec Vim
create_file(){
	if [ -z "$1" ]; then
	  echo "Erreur: Veuillez saisir un nom de fichier."
	  return 1
	fi
        mkdir -p "$(dirname "$1")"
        touch "$1"
        vim "$1"
}

#Recherche insensible a la casse avec grep
grep_icase(){
	command grep -i "$@"
}

#Personnalisation du prompt
PS1='\w\$ '

export PATH="$HOME/bin:$PATH"

#Personnalisation - etape bonus
alias gst='git status'
alias gcm='git commit -m'
alias gad='git add .'
alias gp='git push'

#fonction pour creer un fichier et y acceder
mkdircd()
{
 mkdir -p "$1" && cd "$1"
}

export NOM='Charlie'

