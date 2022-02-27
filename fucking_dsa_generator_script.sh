ssh-keygen -t dsa -b 34096  -a 9999 -M 4096 -f id-dsa-local-"$(mdc2-unique-stamp-time-based)" -C "'$(sha-unique-stamp-time-based)'" -N "$(b64encode )"
