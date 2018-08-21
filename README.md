# Step 1

## Create Scripts Dir

```
sudo su
mkdir -p ~/scripts/logs
```
## Run Debug script as ROOT
```
wget -qO ~/scripts/debug1.sh https://raw.githubusercontent.com/physk/blitz-debug/master/debug1.sh && bash ~/scripts/debug1.sh > ~/scripts/logs/debug1.log && cat ~/scripts/logs/debug1.log | curl -F 'f:1=<-' ix.io
```

## Send me the link it gives you