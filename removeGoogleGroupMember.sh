read -r username < googleUsername
read -r token < token
read -r group < groupName
read -r team < teamName

googlegroupsapi="https://admin.googleapis.com/admin/directory/v1/groups/$groupKey/members/"

while read -r line; do
   member="$line"
   command="curl -X DELETE -u $username:$token $googlegroupsapi"
   command="$command""/teams/$team"
   command="$command""/members/$member"
   eval "$command"
done < memberList
