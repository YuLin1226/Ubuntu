# Please run this script after you finishing install ros.

cat >>~/.bashrc<<EOF

### Fast source workspace
### // This script should be put above alias setting.
function sourceWS()
{
    name=\$(pwd)
    if [ "\$(echo \$name | grep ws)" != "" ];then
        while [ "\$(dirname \$name | grep ws)" != "" ]
        do
            name=\$(dirname \$name)
        done
        echo "source Workspace: \${name}"
        source \${name}/devel/setup.bash
    else
        echo  "[WARNING] Not in a correct directory, source workspace failed."
    fi
}

### Alias
alias rc='vim ~/.bashrc'
alias src='source ~/.bashrc'
alias sw='sourceWS'
EOF