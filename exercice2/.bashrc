#
# ~/.bashrc
#

# If not running interactively, don't do anything

#Message de bienvenue 
echo "Bienvenue $USER !"
[[ $- != *i* ]] && return

#les alias

alias ls='ls -a'
alias ll='ls -al'
alias c='clear'
alias grepc='grep --color=Red'


alias ls='ls --color=auto'

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Creer un fichier et ouvrir avec Vim
create_file(){
	if [ -z "$1" ]; then
	  echo "Erreur: Veuillez fournir un chemin de fichier."
	  return 1
	fi
        mkdir -p "$(dirname "$1")"
        touch "$1"
        vim "$1"
}

#Recherche insensible a la casse avec grep
grep_icase(){
	if [ -z "$1" ] || [ -z "$2" ]; then
	  echo "Usage: grep_icase <motif> <fichier>"
	  return 1
	fi
        grep -i "$1" "$2"
}

#Personnalisation du prompt
#Affiche uniquement le chemin courant et le $
PS1='\w\$ '

export PATH="$HOME/bin:$PATH"


