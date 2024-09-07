# [[Bug]: Unable to locate package amf-amdgpu-pro #378 ](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/issues/378)

Solution:
>    I think I have found a workaround by adding the flag --accept-eula
>
>    `sudo amdgpu-install -y --usecase=workstation,amf --opencl=rocr  --vulkan=pro --accept-eula`
>
>Normally it should prompt you for an acceptance dialog. Are you running non-interactively? If so it skips the EULA acceptance and will fail to install any amdgpu-pro components, including amf. The --accept-eula allows non-interactive EULA acceptance.
