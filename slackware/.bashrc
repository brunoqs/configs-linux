#inicio simpatico
#echo "Loading"
#echo -n
#for i in $(seq 1 1 5);
#do
#		echo -n "."
#		sleep 01;
#		echo -ne ""
#done
clear 

echo '   _ ';
echo '  °v° ** Welcome to GNU/Linux **';
echo ' /(_)\ ';
echo '  ^ ^ ' `date`;
echo ' ';

#config do terminal
#export PS1='\[\033[01;32m\]\u \[\033[01;34m\]\w \[\e[1;32m\]\$ \[\033[00m\]'
G="\[\033[0;32m\]"
BG="\[\033[1;32m\]"
NONE="\[\033[0m\]"
BW="\[\033[1;37m\]"
export PS1="$G┌─[$BG\u$G]$BG@$G[$BG${HOSTNAME%%.*}$G]$BW:\w\n$G└─╼$BG \\$ $NONE"

#java jdk
export JAVA_HOME=/usr/lib64/java

#ajeitando o utf8
export LANG=pt_BR.UTF-8

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#funcao que descompata arquivos
extract(){
	if [ -f "$1" ] ; then
		case "$1" in
			*.tar.bz2) tar xjf "$1" ;;
			*.tar.gz) tar xzf "$1" ;;
			*.tar.Z) tar xzf "$1" ;;
			*.bz2) bunzip2 "$1" ;;
			*.rar) unrar x "$1" ;;
			*.gz) gunzip "$1" ;;
			*.jar) unzip "$1" ;;
			*.tar) tar xf "$1" ;;
			*.tbz2) tar xjf "$1" ;;
			*.tgz) tar xzf "$1" ;;
			*.zip) unzip "$1" ;;
			*.Z) uncompress "$1" ;;
			*) echo "'$1' cannot be extracted." ;;
		esac
	else
		echo "'$1' is not a file."
	fi
}

#funcao que compacta arquivos
compact(){
	if [ -d "$1" ] ; then
		echo "Qual tipo de compactcação deseja usar? .zip/.tar/.tar.gz/.tar.bz"
		read tipo
		case "$tipo" in
			*.zip) zip -r "$1".$tipo "$1" ;;
			*.tar) tar -zcf "$1".$tipo "$1" ;;
			*.tar.gz) tar -czvf "$1".$tipo "$1";;
			*.tar.bz) tar -jcf "$1".$tipo "$1" ;;
			*) echo "Digite uma das compactações especificadas acima!"
		esac
	else
		echo" '$1' is not a directory "
	fi
}

#autocomplete
if [ "$PS1" ]; then
	complete -cf sudo
	complete -cf man
fi


#configuraçao 2 telas
#xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
#xrandr --addmode HDMI2 "1368x768_60.00"
#xrandr --output HDMI2 --mode "1368x768_60.00"
#xrandr --output eDP1 --primary
#xrandr --output eDP1 --right-of HDMI2
#xrandr --output HDMI2 --mode 1920x1080 --pos 1366x0 --rotate normal --output eDP1 --mode 1366x768 --pos 0x312 --rotate normal


