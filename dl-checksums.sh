#!/usr/bin/env sh
set -e
DIR=~/Downloads
APP=pandoc
GHUSER=jgm
MIRROR=https://github.com/${GHUSER}/${APP}/releases/download

dl() {
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}

    local platform="${os}-${arch}"
    local file="${APP}-${ver}-${platform}.${archive_type}"
    local lfile=$DIR/$file
    local url="$MIRROR/$ver/$file"

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1

    printf "  '%s':\n" $ver

    dl $ver linux arm64
    dl $ver linux amd64
    dl $ver windows x86_64 zip
}

dl_ver ${1:-3.1.12.1}
