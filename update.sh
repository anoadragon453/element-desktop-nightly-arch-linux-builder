CURRENT_DAY=`date +%Y%m%d`
PATCH_VERSION=01
echo Building and installing Element Nightly v"$CURRENT_DAY$PATCH_VERSION"...

cp PKGBUILD.template PKGBUILD
sed -i "s/VERSION_STRING/$CURRENT_DAY$PATCH_VERSION/" PKGBUILD
makepkg -csi --noconfirm

echo "Removing leftover debs and zst archives..."
rm element-nightly_"$CURRENT_DAY$PATCH_VERSION"_amd64.deb
rm element-desktop-nightly-bin-"$CURRENT_DAY$PATCH_VERSION"-1-x86_64.pkg.tar.zst
