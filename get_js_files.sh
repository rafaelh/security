wget http://www.offensive-security.com/pwk-files/access_log.txt.gz
gzip -d access_log.txt.gz
grep -o '[^/]*.js\b' access_log.txt | sort -u
