echo "---- Vars ----"
ls -la /opt/appdata/pgblitz/vars | awk '{print $9}'
if [ -e /opt/appdata/pgblitz/vars/automated ]; then
    echo "Running in Automated mode"
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
echo "---- Journalctl ----"
cat /opt/appdata/plexguide/pg.log | grep PGBlitz | tail -100