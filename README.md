Include your kernel image or find one for your specific device in telegram or xda (also could pull it from your boot image)
Place kernel image named kernel in folder named prebuilt
check for maintainer image placement is correct (if no it will show "no image")

# Building
```bash
. build/envsetup.sh
lunch ofox_genevn-eng && m -j$(nproc --all) recoveryimage
```
Profit!!!! 

let me know if anything is awry and i will get to it.
