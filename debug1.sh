echo "---- Vars ----"
ls -la /opt/appdata/pgblitz/vars | awk '{print $9}'
if [ -e /opt/appdata/pgblitz/vars/automated ]; then
    echo "Running in Automated mode"
fi
echo "---- lastGDSA ----"
cat /opt/appdata/pgblitz/vars/lastGDSA
echo "---- gdsaAmount ----"
cat /opt/appdata/pgblitz/vars/ gdsaAmount
echo "---- Software ----"
if [ `echo "10 + 10" | bc` == "20" ]; then
    echo "BC installed";
else
    echo "BC Not installed"
fi
echo "---- Automated Keys ----"
ls -la /opt/appdata/pgblitz/keys/automation/ | awk '{print $9}' | egrep '(PG|GD|GS)'
echo "Found `ls -la /opt/appdata/pgblitz/keys/automation/ | awk '{print $9}' | egrep '(PG|GD|GS)' | wc -l` Keys under automation"
echo "---- Processed Keys (Manual) ----"
ls -la /opt/appdata/pgblitz/keys/processed/ | awk '{print $9}' | egrep '(PG|GD|GS)'
echo "Found `ls -la /opt/appdata/pgblitz/keys/processed/ | awk '{print $9}' | egrep '(PG|GD|GS)' | wc -l` Keys under processed"
echo "---- Unprocessed Keys (Manual) ----"
ls -la /opt/appdata/pgblitz/keys/unprocessed/ | awk '{print $9}' | egrep '(PG|GD|GS)'
echo "Found `ls -la /opt/appdata/pgblitz/keys/unprocessed/ | awk '{print $9}' | egrep '(PG|GD|GS)' | wc -l` Keys under unprocessed"
echo "---- Bad Keys (Manual) ----"
ls -la /opt/appdata/pgblitz/keys/badjson/ | awk '{print $9}' | egrep '(PG|GD|GS)'
echo "Found `ls -la /opt/appdata/pgblitz/keys/badjson/ | awk '{print $9}' | egrep '(PG|GD|GS)' | wc -l` Keys under badjson"
echo "---- Folders ----"
echo "Found `find /mnt/pgblitz -maxdepth 1 -type d | wc -l` folders Under /mnt/pgblitz of which `find /mnt/pgblitz -maxdepth 1 -type d -empty | wc -l` are empty"
echo "---- Files ----"
echo "Found `find /mnt/move -type f | wc -l` files Under /mnt/move"
echo "Found `find /mnt/pgblitz -type f | wc -l` files Under /mnt/pgblitz"
echo "Found `find /opt/appdata/pgblitz/pid -type f -iname '*.trans' | wc -l` PID files"
echo "Found `find /mnt/move -type f -iname '*.lck' | wc -l ` lock files in /mnt/move"
if [ -e /opt/appdata/pgblitz/keys/automation/rclone.conf ]; then
    echo "It looks like the rclone config move failed"
fi
#echo "---- MD5 ----"
#if [ `cat /opt/appdata/pgblitz/pgblitz.sh | md5sum | awk '{print $1}'` == "7688841d687f163fffbfee64ce86c3ac" ]; then
#    echo "pgblitz.sh Does not seem to have been modified"
#else
#    echo "pgblitz.sh Seems to have been modified - No Support"
#fi
#if [ `cat /opt/appdata/pgblitz/upload.sh | md5sum | awk '{print $1}'` == "305aecdd8a2cc908f97c54143b24a22e" ]; then
#    echo "upload.sh Does not seem to have been modified"
#else
#    echo "upload.sh Seems to have been modified - No Support"
#fi
echo "---- Journalctl ----"
cat /opt/appdata/plexguide/pg.log | grep PGBlitz | tail -100