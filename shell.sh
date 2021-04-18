


file="./application.properties"

if [ -f "$file" ]
then
  echo "$file found."

  while IFS='=' read -r key value
  do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
  done < "$file"

  echo "User Id       = " ${db_uat_user}
  echo "user password = " ${db_uat_passwd}
else
  echo "$file not found."
fi
done