# OpenLDAP

## Getting started

Create an .env file in the container directory with same contents as .env.example. Replace the values as per the environment and start the container.

```bash
docker compose up -d --build
```

## Testing

Test your OpenLDAP admin credentials:

```bash
docker exec openldap ldapsearch -x -H ldap://localhost -b dc=<yourdomain>,dc=<tld> -D "cn=admin,dc=<yourdomain>,dc=<tld>" -w <admin_password>
```
