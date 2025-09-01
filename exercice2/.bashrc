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

#copier dotfile

cp -r .bashrc ~/
cp -r .gitconfig ~/
cp -r install.sh ~/

cp -r .bashrc ~/.config
cp -r.gitconfig ~/.config
cp -r install.sh~/.config

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
	command grep -i "$@"
}

#Personnalisation du prompt
PS1='\w\$ '

export PATH="$HOME/bin:$PATH"


