# manage-github-team
Shell script to add or remove multiple members to a GitHub team.

## Setup
Edit these files:

* `githubUsername`: Your GitHub username
* `orgName`: GitHub org name (hackreactor)
* `teamName`: Name of the team to which you are adding members
* `memberList`: Line separated list of all GitHub usernames to be added or removed

Add one file `token` containing only your [GitHub Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token).


## Execute

The scripts run immediately; there are no confirmations.

### Add members to GitHub team
To add the members contained in `memberList` to the team contained in `teamName`, run `bash addTeamMembers.sh` on the command line.

### Remove members to GitHub team
To remove the members contained in `memberList` to the team contained in `teamName`, run `bash removeTeamMembers.sh` on the command line.
