if [ $(ps | grep -c stunnel) -gt 1 ]; then
    echo "Returned more than one stunnel process, assume it is up"
    exit 0
else
    echo "Stunnel seems down, attempt restart before calling it"
    /etc/init.d/stunnel4 restart
    sleep 10
    if [ $(ps | grep -c stunnel) -gt 1 ]; then
        echo "Returned more than one stunnel process, assume it is up"
        exit 0
    else
        echo "Returned less than one stunnel process, assume it is down"
        exit 1
    fi
fi