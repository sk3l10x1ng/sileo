#!/bin/sh
echo "[+] Building packages now!"
dpkg-scanpackages -m ./debs > Packages
bzip2 -kf Packages
gzip -kf Packages
echo "[+] Done building packages!"
