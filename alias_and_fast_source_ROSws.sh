cat >>~/.bashrc<<EOF

### Fast source workspace
### // This script should be put above alias setting.
name=\$(pwd)
if [ "\$(echo \$name | grep ws)" != "" ];then
	while [ "\$(dirname \$name | grep ws)" != "" ]
	do
		name=\$(dirname \$name)
	done
else
	echo  "[WARNING] Not in a correct directory, source workspace failed."
fi

### Alias
alias rc='vim ~/.bashrc'
alias src='source ~/.bashrc'
alias echoWS='echo "source Workspace: \${name}"'
alias sw='echoWS && source \${name}/devel/setup.bash'
EOF