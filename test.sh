echo "Download Rootfs, this may take a while base on your internet speed."
case `dpkg --print-architecture` in
aarch64)
	archurl="arm64" ;;
arm)
	archurl="armhf" ;;
amd64)
	archurl="amd64" ;;
x86_64)
archurl="amd64" ;;	
*)
echo "unknown architecture"; exit 1 ;;
esac
wget "https://github.com/AndronixApp/AndronixOrigin/raw/master/Rootfs/Ubuntu20/focal-${archurl}.tar.gz" -O $tarball
