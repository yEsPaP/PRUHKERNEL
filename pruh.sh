#!/bin/bash
echo "Setting Up Environment"
echo ""
export CROSS_COMPILE=/home/kernel/user/gcc1/bin/aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=q
export PLATFORM_VERSION=10
export USE_CCACHE=1
CPU=`nproc --all`
clear
echo "Select"
echo "1 = Clean Build"
echo "2 = A320X"
echo "3 = Exit"
echo "4 = J7velte"
echo "5 = A6"
echo "6 = J5" 
echo "7 = J6"
echo "8 = J7xelte"
echo "9 = J7y17lte"
echo "10 = on7xelte"
read n
clear  
if [ $n -eq 1 ]; then

make clean && make mrproper
rm -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image
rm -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img
elif [ $n -eq 2 ]; then

echo "=========="

echo "=========="
echo "============="
echo "Building zImage For A320X"
echo "============="
make exynos7870-a3y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A3lte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_a3y17lte.img
elif [ $n -eq 3 ]; then
exit
elif [ $n -eq 4 ]; then

make exynos7870-j7velte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7velte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_j7velte.img

elif [ $n -eq 5 ]; then

make exynos7870-a6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A6"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_a6lte.img

elif [ $n -eq 6 ]; then

make exynos7870-j5y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J5"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_j5y17lte.img

elif [ $n -eq 7 ]; then

make exynos7870-j6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J6lte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_j6lte.img

elif [ $n -eq 8 ]; then

make exynos7870-j7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7xelte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_j7xelte.img

elif [ $n -eq 9 ]; then

make exynos7870-j7y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7y17lte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_j7y17lte.img

elif [ $n -eq 10 ]; then

make exynos7870-on7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for on7xelte"
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/Image /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-zImage
cp -r /home/kernel/user/Pruh_Kernel/arch/arm64/boot/dtb.img /home/kernel/user/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/kernel/user/Pruh_Kernel/build_folder/repackimg.sh
mv /home/kernel/user/Pruh_Kernel/build_folder/image-new.img /home/kernel/user/Pruh_Kernel/build_folder/output/boot_for_on7xelte.img
fi
