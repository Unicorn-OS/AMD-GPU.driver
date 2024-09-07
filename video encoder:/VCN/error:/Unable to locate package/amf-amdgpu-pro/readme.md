# [[Bug]: Unable to locate package amf-amdgpu-pro #378 ](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/issues/378)

## Solution:
test: works!
driver: "amdgpu-install_5.4.50401-1_all.deb"

>    I think I have found a workaround by adding the flag --accept-eula
>
>    `sudo amdgpu-install -y --usecase=workstation,amf --opencl=rocr  --vulkan=pro --accept-eula`
>
>Normally it should prompt you for an acceptance dialog. Are you running non-interactively? If so it skips the EULA acceptance and will fail to install any amdgpu-pro components, including amf. The --accept-eula allows non-interactive EULA acceptance.

## "versions 6.0 and above do not support AMF"
https://github.com/GPUOpen-LibrariesAndSDKs/AMF/issues/378#issuecomment-2171560997

>I find amd-install >5.7.3 remove [proprietary/](https://repo.radeon.com/amdgpu/5.7.3/ubuntu/pool/proprietary/)
>That is to say, versions 6.0 and above do not support AMF
