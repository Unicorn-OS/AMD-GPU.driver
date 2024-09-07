sch: https://www.google.com/search?q=AMD+VCN+encoder+ubuntu https://www.google.com/search?q=AMD+VCN+encoder+test+ubuntu

# Guide:
## relation (for): HandBrake
https://handbrake.fr/docs/en/latest/technical/video-vcn.html


# Problem:
https://github.com/HandBrake/HandBrake/discussions/5026

## Solution:
1. install opencl=legacy
>i have with new routine installed the "graphics" usecase or "open" it is;
>but it functions still;
>as per AMD instructions:
>
>`amdgpu-pro-install has been dropped, bu the following equivalent command can be used instead: amdgpu-install --usecase=workstation --vulkan=pro`
>
>after installing the "pro" variant , inmy case i used
>
>`amdgpu-install --usecase=workstation --opencl=legacy --vulkan=pro`
>
>afterwards, the amf-amdgpu-pro package became available in terminal, and hence, Handbrake would correctly enable AMD VCE.

1. Fix error `Unable to locate package `
notes: https://github.com/Unicorn-OS/AMD-GPU.driver/blob/main/video%20encoder:/VCN/error:/Unable%20to%20locate%20package/amf-amdgpu-pro/readme.md

solution: [[Bug]: Unable to locate package amf-amdgpu-pro #378](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/issues/378)

## works:
Combine these two to make a working install string:
```
sudo amdgpu-install --usecase=workstation --opencl=legacy --vulkan=pro --accept-eula
```
