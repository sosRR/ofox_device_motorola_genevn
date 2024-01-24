Check that maintainer avatar placement is correct
(if not maintainer avatar in settings will display "no image")

# Building

setup build environment for orangefox 12.1
add device trees 

```bash
mkdir ~/OrangeFox_sync
cd ~/OrangeFox_sync
git clone https://gitlab.com/OrangeFox/sync.git # (or, using ssh, "git clone git@gitlab.com:OrangeFox/sync.git")

cd ~/OrangeFox_sync/sync/
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1

## Add device tree by git clone or download directly
## then build!

cd ~/fox_12.1

. build/envsetup.sh
lunch ofox_genevn-eng && m -j$(nproc --all) recoveryimage
```
Profit!!!! 

let me know if anything is awry and i will get to it.
