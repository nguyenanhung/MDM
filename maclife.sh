csrutil authenticated-root disable;
diskutil mount /Volumes/MacbookPro2018;
 Mount -uv /Volumes/MacbookPro2018;	
 cd /Volumes/MacbookPro2018/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/MacbookPro2018/System/Library/CoreServices --bootefi --create-snapshot;
Echo "OK MDM @ Mod to Mac from nguyenanhung.com"
