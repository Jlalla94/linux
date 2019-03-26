 #!/bin/bash
parser=$(curl --silent ${1##--url=} | sed -n "/${2##--word=}/="| tr '\n' ', ')
count=$(curl --silent ${1##--url=} | grep -c ${2##--word=})


if [[ -n $3 ]];
    then

        echo "${2##--word=}: ${count} [${parser%?}]" > ${3##--file=};
        
    else
        
        echo "${2##--word=}: ${count} [${parser%?}]"
        
fi        
        
