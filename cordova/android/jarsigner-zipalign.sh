#!/bin/sh

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore some.keystore release-unsigned.apk AppName
jarsigner -verify -verbose -certs release-unsigned.apk
zipalign -v 4 release-unsigned.apk release.apk
