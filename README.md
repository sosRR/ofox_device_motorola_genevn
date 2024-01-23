Extract kernel.gz to same folder 

check for maintainer image placement is correct
(if no it will show "no image")

# Building

setup build environment for orangefox 12.1
add device trees 

```bash
. build/envsetup.sh
lunch ofox_genevn-eng && m -j$(nproc --all) recoveryimage
```
Profit!!!! 

let me know if anything is awry and i will get to it.
