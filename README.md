# Oracle APEX CI/CD with SQLcl

This project provides a lightweight **CI/CD workflow** for Oracle APEX applications.  
Using **SQLcl + Git**, developers can track application exports, commit them to version control, and generate human-readable changelogs for business and QA teams.

Submit bug reports, feature suggestions, or track issues in your Git repository’s issue tracker.


## Table of contents

- Requirements
- Installation
- Configuration
- Usage
- Troubleshooting
- FAQ
- Maintainers


## Requirements

This project requires the following:

- Oracle SQLcl 23.x or later  
- Oracle Database with APEX installed  
- Git for version control  


## Installation

1. Initialize a SQLcl project:
   ```bash
   project init -name apex_cicd -schemas MYSCHEMA

2. Export your APEX application:
project export -o apex.201

3. Initialize Git and make the first commit:
git init
git remote add origin <your-repo-url>
git add .
git commit -m "Initial commit - Project init + APEX app export"
git push origin main
