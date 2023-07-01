#!/vendor/bin/sh
device=`getprop ro.boot.device`

## Thanks electimon for help.

if [ $device == "devon" ];
then
	mount -o bind /vendor/etc/audio_platform_info_devon.xml /vendor/etc/audio_platform_info.xml
	mount -o bind /vendor/etc/audio_policy_volumes_devon.xml /vendor/etc/audio_policy_volumes.xml
	mount -o bind /vendor/etc/default_volume_tables_devon.xml /vendor/etc/default_volume_tables.xml
	mount -o bind /vendor/bin/init.devon.fingerprint2.sh /vendor/bin/init.oem.fingerprint2.sh
	setprop vendor.audio.mixer_xml.path /vendor/etc/mixer_paths_devon.xml
fi
if [ $device == "hawao" ];
then
	mount -o bind /vendor/etc/audio_platform_info_hawao.xml /vendor/etc/audio_platform_info.xml
	mount -o bind /vendor/etc/audio_policy_volumes_hawao.xml /vendor/etc/audio_policy_volumes.xml
	mount -o bind /vendor/etc/default_volume_tables_hawao.xml /vendor/etc/default_volume_tables.xml
	mount -o bind /vendor/bin/init.hawao.fingerprint2.sh /vendor/bin/init.oem.fingerprint2.sh
	setprop vendor.audio.mixer_xml.path /vendor/etc/mixer_paths_hawao.xml
fi
if [ $device == "rhode" ];
then
	mount -o bind /vendor/etc/audio_platform_info_rhode.xml /vendor/etc/audio_platform_info.xml
	mount -o bind /vendor/etc/audio_policy_volumes_rhode.xml /vendor/etc/audio_policy_volumes.xml
	mount -o bind /vendor/etc/default_volume_tables_rhode.xml /vendor/etc/default_volume_tables.xml
	mount -o bind /vendor/bin/init.rhode.fingerprint2.sh /vendor/bin/init.oem.fingerprint2.sh
	setprop vendor.audio.mixer_xml.path /vendor/etc/mixer_paths_rhode.xml
fi
