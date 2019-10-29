echo "vagrant cloudのトークンを取得します"

cd `dirname $0`

echo -n "ID:"
read vgid
echo "${vgid}"

echo -n "PW:"
read vgpw
echo "${vgpw}"

curl \
  --header "Content-Type: application/json" \
  https://app.vagrantup.com/api/v1/authenticate \
  --data "
    {
      'token': {
        'description': 'Login from cURL'
      },
      'user': {
        'login': \"${vgid}\",
        'password': \"${vgpw}\"
      }
    }
  " > token
