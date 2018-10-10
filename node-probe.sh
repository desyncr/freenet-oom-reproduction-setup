while [ 1 ]; do
    curl 'http://127.0.0.1:8888/stats/?fproxyAdvancedMode=2' 2>/dev/null | grep -io nodeUptimeSession.*'<' | grep -io '[^;]*<' | grep -io '.*[^<]'
    curl 'http://127.0.0.1:8888/stats/?fproxyAdvancedMode=2' 2>/dev/null | grep -io '[^>]* java memory.*&' | grep -io '[^&]*'
    sleep 5
done
