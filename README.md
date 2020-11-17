# populate-team
Shell script to add multiple members to a GitHub team.

## Setup
Add one file `token` containing only your GitHub Personal Access Token.

Edit these files:

* githubUsername: Your GitHub username
* org: GitHub org name (hackreactor)
* team: Name of the team to which you are adding members
* newMembers: Line separated list of all GitHub usernames to be added

## Execute
Run `bash addtoteam.sh`
