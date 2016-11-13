#!/bin/sh

BOOTSTRAP_REPO="${BOOTSTRAP_REPO:-https://repo.voidlinux.eu}"
BOOTSTRAP_TARBALL="${BOOTSTRAP_TARBALL:-void-rpi2-rootfs-20160420.tar.xz}"
BOOTSTRAP_DEVICE="$1"
BOOTSTRAP_DIRECTORY="${BOOTSTRAP_DIRECTORY:-/tmp/sdbootstrap}"
GPG_ENV="GNUPGHOME=${BOOTSTRAP_DIRECTORY}/gpghome"

echo "Getting sources"
mkdir -p "${BOOTSTRAP_DIRECTORY}/gpghome"
mkdir -p "${BOOTSTRAP_DIRECTORY}/mnt"
chmod 700 "${BOOTSTRAP_DIRECTORY}/gpghome"
wget -N -P "$BOOTSTRAP_DIRECTORY" "${BOOTSTRAP_REPO}/live/current/${BOOTSTRAP_TARBALL}"
wget -N -P "$BOOTSTRAP_DIRECTORY" "${BOOTSTRAP_REPO}/live/current/sha256sums.txt"
wget -N -P "$BOOTSTRAP_DIRECTORY" "${BOOTSTRAP_REPO}/live/current/sha256sums.txt.asc"

echo "Verifying sources"
env $GPG_ENV gpg --keyserver pgp.mit.edu --recv 482F9368 || exit
env $GPG_ENV gpg --verify "${BOOTSTRAP_DIRECTORY}/sha256sums.txt.asc" "${BOOTSTRAP_DIRECTORY}/sha256sums.txt" || exit
cd "$BOOTSTRAP_DIRECTORY"
sha256sum -c "sha256sums.txt" --ignore-missing || exit
cd -

echo "Preparing install media"
parted "$BOOTSTRAP_DEVICE" mktable msdos
parted "$BOOTSTRAP_DEVICE" mkpart primary fat32 2048s 256MB
parted "$BOOTSTRAP_DEVICE" toggle 1 boot
parted "$BOOTSTRAP_DEVICE" "mkpart primary ext4 256MB -1"
mkfs.vfat "${BOOTSTRAP_DEVICE}1"
mkfs.ext4 -O ^has_journal "${BOOTSTRAP_DEVICE}2"

echo "Installing Void Linux"
mount "${BOOTSTRAP_DEVICE}2" "${BOOTSTRAP_DIRECTORY}/mnt"
mkdir "${BOOTSTRAP_DIRECTORY}/mnt/boot"
mount "${BOOTSTRAP_DEVICE}1" "${BOOTSTRAP_DIRECTORY}/mnt/boot"
tar xfJp "${BOOTSTRAP_DIRECTORY}/${BOOTSTRAP_TARBALL}" -C "${BOOTSTRAP_DIRECTORY}/mnt"
sync
echo '/dev/mmcblk0p1 /boot vfat defaults 0 0' >> "${BOOTSTRAP_DIRECTORY}/mnt/etc/fstab"
umount "${BOOTSTRAP_DEVICE}1"
umount "${BOOTSTRAP_DEVICE}2"

rm -r "$BOOTSTRAP_DIRECTORY"
