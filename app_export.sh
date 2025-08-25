ACCEPT PROJECT_NAME CHAR PROMPT 'Enter Project Name: '

project init -name &PROJECT_NAME -schemas &&WORKSPACE

project export -o apex.201
