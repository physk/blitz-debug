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
echo "---- Files ----"
echo "Found `find /mnt/move -type f | wc -l` files Under /mnt/move"
echo "Found `find /mnt/pgblitz -type f | wc -l` files Under /mnt/pgblitz"
echo "---- Journalctl ----"
sudo cat /opt/appdata/plexguide/pg.log | grep PGBlitz | tail -100