# .bashrc

dircount() {
	local _dircnt=`dirs -p | wc -l`
	if [ $_dircnt -gt 1 ]; then
		echo `expr $_dircnt - 1`
	else
		echo ""
	fi
}

jobscount() {
	local _jcnt=`jobs | wc -l`
	if [ $_jcnt -gt 0 ]; then
		echo "{$_jcnt}"
	fi
}

# User specific aliases and functions
alias dirs='dirs -v -l'

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

if [ -f $HOME/.dir_colours ]; then
	eval `dircolors -b $HOME/.dir_colours`
fi

# prompts (borrowed from OpenSuSE's /etc/bash.bashrc)
test -z "$UID" && readonly UID=`id -ur 2> /dev/null`
title () {
  local _term="$1" _pwd _len _width
  test -n "$_term" || return
  test "${_term#tty}" = $_term && _term=pts/$_term
  test -O /dev/$_term || return
  _width=`tput cols`
  _width=`expr $_width - 10`
  _pwd="$(dirs -l +0)"
  _len=$((${#_pwd}-${_width}))
  test ${#_pwd} -le ${_width} || _pwd="...${_pwd#$(printf "%.*s" $_len "$_pwd")}"
  printf "\e]2;%s\007\e]1;\007" "$_pwd" > /dev/$_term
}
#if test \( "$TERM" = "xterm" -o "${TERM#screen}" != "$TERM" \) \
#		-a -z "$EMACS" -a -z "$MC_SID" -a -n "$DISPLAY" -o $UID = 0
#then
  _title="\$(title \l)"
  _noattr="$(tput sgr0 2> /dev/null)"
  _red="$(tput setaf 1 2> /dev/null)"
  _green="$(tput setaf 2 2> /dev/null)"
  _yellow="$(tput setaf 3 2> /dev/null)"
  _blue="$(tput setaf 4 2> /dev/null)"
  _magenta="$(tput setaf 5 2> /dev/null)"
  _cyan="$(tput setaf 6 2> /dev/null)"
  _white="$(tput setaf 7 2> /dev/null)"
#fi
export PS1="$_title"'\[$_green\][\[$_yellow\]\u@\h \W\[$_cyan\]$(__git_ps1)\[$_green\]]$(dircount)$(jobscount)$\[$_noattr\] '
export PR1="$_title"'\[$_green\][\[$_red\]\u@\h \W\[$_cyan\]$(__git_ps1)\[$_green\]]$(dircount)$(jobscount)$\[$_noattr\] '
export GIT_PS1="$_title"'\[$_cyan\]$(__git_ps1)\[$_green\]$\[$_noattr\] '
export BUILD_PS1="$_title"'\[$_green\][\[$_yellow\]\u@\h \W\[$_cyan\]$(__git_ps1)\[$_green\]]$(dircount)$$(jobscount) \D{%b%d %I:%M:%S %P}\[$_noattr\] '
if [ `id -ur` = 0 ]; then
	PS1=$PR1
fi

export EDITOR=vim
export LC_ALL=C
export PATH=/home/trevor/local/bin:/usr/local/bin:/usr/bin:/usr/X11R6/bin:/bin:/usr/sbin:/sbin:/opt/kde3/bin
export LD_LIBRARY_PATH=/home/trevor/local/lib
export PKG_CONFIG_PATH=/home/trevor/local/lib/pkgconfig:/usr/local/lib/pkgconfig
export CPATH=/home/trevor/local/include
#export http_proxy=172.17.10.35:81
#export ftp_proxy=172.17.10.35:81
export MANPATH=/home/trevor/local/man:/home/trevor/local/share/man:$MANPATH
#export JAVA_HOME=/opt/jdk1.7.0_07
#export JAVA_ROOT=$JAVA_HOME
#export SDK_HOME=$JAVA_HOME
#export JDK_HOME=$JAVA_HOME
#export JAVA_BINDIR=$JAVA_HOME/bin
#export JRE_HOME=$JAVA_HOME/jre

# maven
export M2_HOME=$HOME/local/packages/apache-maven-2.2.1
export PATH=$PATH:$M2_HOME/bin

if [ -n "$TERM" -a "$TERM" != "dumb" ]; then
	setterm -blength 0

	# turn off visual bell
	bind 'set bell-style none'
fi
unset command_not_found_handle
