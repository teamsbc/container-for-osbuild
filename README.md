# container-for-osbuild

> [!CAUTION]
> We hope to upstream this container. Depend on this repository and its container at your own peril.

Containerizes [osbuild](https://github.com/osbuild/osbuild/) with an entrypoint that sets up the necessary shenanigans so SELinux and friends work in the container. Based on what [bootc-image-builder](https://github.com/osbuild/bootc-image-builder) does.

