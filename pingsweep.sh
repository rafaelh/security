# Perform a ping sweep

usage() {
echo "Usage: ${0} /24 range, eg: 10.11.1"
}

host_responding() {
    ping -c 1 -w 1 "${ip}" > /dev/null 2>&1
}

network="${1}"

for host in $(seq 1 254); do

    ip="${network}.${host}"

    if host_responding "${ip}"; then
        echo "${ip}"
    fi

done