# drove-ldap-tunnel

LDAP tunnel for drove services.

Some LDAP servers that use SSL do not use a format that can be used by tools such as Jenkins.

For this, we can use a ldaps tunnel.

This image will create such a tunnel.

```bash
 docker service create --name ldap \
     -e OUTGOING_HOST="myldaps.mycompany.com" \
     -e OUTGOING_PORT="12345" \
      flusso/drove-ldap-tunnel
```
