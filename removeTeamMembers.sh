read -r username < githubUsername
read -r token < token
read -r org < orgName
read -r team < teamName

githubapi="https://api.github.com/orgs/$org"

while read -r line; do
   member="$line"
   command="curl -X DELETE -u $username:$token $githubapi"
   command="$command""/teams/$team"
   command="$command""/memberships/$member"
   eval "$command"
done < memberList
