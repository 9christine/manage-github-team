# manage-github-team
Shell script to add or remove multiple members on a GitHub team.

## Setup
Edit these files:

* `githubUsername`: Your GitHub username
* `orgName`: GitHub org name
* `teamName`: Name of the team to which you are adding members
* `memberList`: Line separated list of all GitHub usernames to be added or removed

Add one file:
 * `token`: Add only your [GitHub Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token). There should be no other lines or comments in this file.


## Execute
The scripts runs in its entirety upon execution. There are no user inputs. 

### To add members to a team
Run `bash addTeamMembers.sh` on the command line. This will immediately add the members contained in `memberList` to the team contained in `teamName`, one at a time.

When a member is successfully added to the team, a message is displayed in the terminal stream:

```
{
  "state": "active",
  "role": "member",
  "url": "https://api.github.com/organizations/2824164/team/4876353/memberships/{GITHUB USERNAME}"
}
```

If a GitHub username is not found or cannot be added to the team, the program will display an error message in the terminal stream:

```
{
  "message": "Not Found",
  "documentation_url": "https://docs.github.com/rest"
}
```

### To remove members from a team
Run `bash removeTeamMembers.sh` on the command line. This will immediately remove the members contained in `memberList` to the team contained in `teamName`.

---

Author: Christine Taylor (08/12/2019), adapted for HackReactor/Galvanize use 11/2020. GitHub username: ChristineETaylor
