# .bashrc

dircount() {
	local _dircnt=`dirs -p | wc -l`
	if [ $_dircnt -gt 1 ]; then
		echo "[dirs:`expr $_dircnt - 1`]"
	fi
}
_dircount="\$(dircount)"

jobscount() {
	local _jcnt=`jobs | wc -l`
	if [ $_jcnt -gt 0 ]; then
		echo "{jobs:$_jcnt}"
	fi
}
_jobscount="\$(jobscount)"

hex2string() {
	_i=0
	while [ $_i -lt ${#1} ]; do
		echo -en "\x"${1:$_i:2}
		let "_i += 2"
	done
}

# ubuntu/opensuse-specific section
lsb_release -d | grep -i ubuntu > /dev/null 2>&1
if [ $? -eq 0 ]; then
	# Ubuntu
	alias ls="ls --color"

	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# set/update TERM
if [ -n "$TERM" -a "$TERM" != "dumb" ]; then
	export TERM=xterm-256color

	# turn off visual bell
	bind 'set bell-style none'

	##################
	# Key bindings
	# re-bind C-w from unix-word-rubout to backward-kill-word
	# this means C-w will stop at punctuation and not just whitespace
	stty werase undef
	bind '"\C-w":backward-kill-word'
	##################

else
	export TERM=vt100
fi

# User specific aliases and functions
alias dirs='dirs -v -l'
alias gwr='watch -d -c -n 5 git log --color --graph --abbrev-commit --pretty=oneline'
alias info='info --vi-keys'

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# call resize every time the prompt is drawn
term_resize() {
	which resize > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		eval $(resize) > /dev/null 2>&1
	fi
}
_term_resize="\$(term_resize)"

# display the duration of the last command
# if the duration is less than 60 seconds then just show seconds
# otherwise show hh:mm:ss
# don't show anything if the duration is zero
trap '_STARTSECONDS=${_STARTSECONDS:-$SECONDS}' DEBUG
PROMPT_COMMAND=last_cmd_duration_stop
last_cmd_duration_stop() {
    _SECONDS=$(($SECONDS - $_STARTSECONDS))
    unset _STARTSECONDS
}
last_cmd_duration() {
	local _h
	local _m
	local _s

	if [ $_SECONDS -ge 60 ]; then
		_h=$(($_SECONDS/3600))
		_m=$((($_SECONDS%3600)/60))
		_s=$(($_SECONDS%60))
		printf "{%02d:%02d:%02d}" $_h $_m $_s
	elif [ $_SECONDS -ne 0 ]; then
		echo "{$_SECONDS}"
	fi
}
_last_cmd_duration="\$(last_cmd_duration)"

# prompts (borrowed from OpenSuSE's /etc/bash.bashrc)
test -z "$UID" && readonly UID=`id -ur 2> /dev/null`
title () {
	local _term="$1" _pwd _len _width _sdate
	test -n "$_term" || return
	test "${_term#tty}" = $_term && _term=pts/$_term
	test -O /dev/$_term || return
	_width=`tput cols`
	_width=`expr $_width - 10`
	#_pwd="$(dirs -l +0 | tr -s ' ' | sed -r "s/^ +//" | cut -d' ' -f2)"
	_pwd="$(pwd)"
	_len=$((${#_pwd}-${_width}))
	test ${#_pwd} -le ${_width} || _pwd="...${_pwd#$(printf "%.*s" $_len "$_pwd")}"
	_sdate=$(date "+%b%d %I:%M:%S %P")
	printf "\e]2;%s\007\e]1;\007" "$_sdate $_pwd" > /dev/$_term
}
_title="\$(title \l)"
_noattr="$(tput sgr0 2> /dev/null)"
if [ $(tput colors) -eq 256 ]; then
	if [ -r $HOME/Data/myconfig/dir_colours.xterm-256colour ]; then
		eval `dircolors -b $HOME/Data/myconfig/dir_colours.xterm-256colour`
	fi
	if [ `id -ur` = 0 ]; then
		_delim="$(tput setaf 167 2> /dev/null)"
	else
		_delim="$(tput setaf 82 2> /dev/null)"
	fi
	_machine="$(tput setaf 227 2> /dev/null)"
	_white="$(tput setaf 250 2> /dev/null)"
	_git="$(tput setaf 14 2> /dev/null)"
elif [ $(tput colors) -eq 8 ]; then
	if [ -r $HOME/Data/myconfig/dir_colours ]; then
		eval `dircolors -b $HOME/Data/myconfig/dir_colours`
	fi
	if [ `id -ur` = 0 ]; then
		_delim="$(tput setaf 1 2> /dev/null)"
	else
		_delim="$(tput setaf 2 2> /dev/null)"
	fi
	_machine="$(tput setaf 3 2> /dev/null)"
	_white="$(tput setaf 7 2> /dev/null)"
	_git="$(tput setaf 6 2> /dev/null)"

#	_red="$(tput setaf 1 2> /dev/null)"
#	_green="$(tput setaf 2 2> /dev/null)"
#	_yellow="$(tput setaf 3 2> /dev/null)"
#	_blue="$(tput setaf 4 2> /dev/null)"
#	_magenta="$(tput setaf 5 2> /dev/null)"
fi

move_cursor_to_start_of_ps1() {
	local _rows=$(history 1 | wc -l) _vmvmt _cmd _cmdlen _plen _tlen _lines
	if [ "$_rows" -gt 1 ]; then
		_vmvmt=$_rows+1
	else
		_cmd=$(history 1 | sed 's/^\s*[0-9]*\s*//')
		_cmdlen=${#_cmd}
		_plen=${#PS1}
		_tlen=$_cmdlen+$_plen
		_lines=$_tlen/${COLUMNS}+1
		_vmvmt=$_lines+1
	fi
	tput cuu $_vmvmt
}
_move_curpos="\$(move_cursor_to_start_of_ps1)"
_save_curpos="\e[s"
_restore_curpos="\e[u"
PS0_ELEMENTS=(
	"$_title"
	"$_save_curpos"
	"$_move_curpos"
	"\[$_delim\]["
	"\[$_machine\]"
	"\D{%b%d %I:%M:%S %P} "
	"$_restore_curpos"
	"\[$_noattr\]"
)
export PS0=$(IFS=; echo "${PS0_ELEMENTS[*]}")

PS1_ELEMENTS=(
	"$_term_resize"
	"$_title"
	"\[$_delim\]["
	"\[$_machine\]"
	"----- --:--:-- -- "
	"\W"
	"\[$_git\]\$(__git_ps1)"
	"\[$_delim\]]"
	"\[$_white\]"
	"$_dircount"
	"$_jobscount"
	"\[$_delim\]"
	"(\D{%b%d %I:%M:%S %P})"
	"$_last_cmd_duration"
	"\$\[$_noattr\]"
	" "
)
export PS1=$(IFS=; echo "${PS1_ELEMENTS[*]}")

# required for the new python3-based OE
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export LANGUAGE=C.UTF-8

export EDITOR=vim
export PATH=/home/trevor/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export LD_LIBRARY_PATH=/home/trevor/local/lib:/home/trevor/local/lib64:/usr/local/lib:/usr/local/lib64
export PKG_CONFIG_PATH=/home/trevor/local/lib/pkgconfig:/home/trevor/local/lib64/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig
export CPATH=/home/trevor/local/include:/usr/local/include
#export http_proxy=172.17.10.35:81
#export ftp_proxy=172.17.10.35:81
export MANPATH=/home/trevor/local/man:/home/trevor/local/share/man:$MANPATH
#export JAVA_HOME=/opt/jdk1.7.0_07
#export JAVA_ROOT=$JAVA_HOME
#export SDK_HOME=$JAVA_HOME
#export JDK_HOME=$JAVA_HOME
#export JAVA_BINDIR=$JAVA_HOME/bin
#export JRE_HOME=$JAVA_HOME/jre
export PYTHONPATH=/home/trevor/local/lib/python2.7/site-packages
export VAGRANT_HOME=/extra/vagrant

# maven
export M2_HOME=$HOME/local/packages/apache-maven-2.2.1
export PATH=$PATH:$M2_HOME/bin

unset command_not_found_handle
