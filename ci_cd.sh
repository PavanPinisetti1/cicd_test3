-- 1. Ask for Project Name dynamically
ACCEPT PROJECT_NAME CHAR PROMPT 'Enter Project Name: '

-- 2. Create SQLcl Project
project init -name &PROJECT_NAME -schemas &&WORKSPACE

-- 3. Initialize Git repository
!git init --initial-branch=main
!git add .
!git commit -m "initializing repository with default project &PROJECT_NAME files"

-- 4. Ask for Git remote URL
ACCEPT REMOTE_URL CHAR PROMPT 'Enter Git remote URL: '
!git remote add origin &REMOTE_URL

-- 5. Create base-release branch
!git checkout -b base-release

-- 6. Export DB Objects + APEX Apps
project export -o apex.201

-- 7. Commit base release into Git
!git add .
!git commit -m "Base release for project &PROJECT_NAME"

-- 8. Push branches to remote
!git push -u origin main
!git push -u origin base-release

-- exit
