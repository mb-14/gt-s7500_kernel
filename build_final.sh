cp ./GT-S7500_Kernel/arch/arm/boot/Image Image
./mkbootfs initramfs | gzip > ramdisk.gz
./mkbootimg --kernel Image --ramdisk ramdisk.gz --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=qcom" --base 0x00200000 --pagesize 2048 -o boot.img

