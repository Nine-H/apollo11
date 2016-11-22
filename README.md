#Apollo11

###hello, houston.
Apollo11 is a framework project for elementary OS, hopefully good enough I can start eating the dogfood soon.

The ultimate goal is to develop a skeleton to save developers starting from tabula rasa for every new project and allow them to expect to be able to publish from T minus zero.

###features.
* CMake build setup.
* Requires only elementary-sdk.
* Window with HeaderBar.
* Window position saving and GSettings support.
* AppData.xml for publishing in appcenter.

###get it:
install the elementary OS SDK

```
sudo apt install elementary-sdk
```

clone the Apollo11 repository
```
git clone https://github.com/Nine-H/apollo11.git
cd apollo11
```

build the project

```
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr ../
make
sudo make install
```
