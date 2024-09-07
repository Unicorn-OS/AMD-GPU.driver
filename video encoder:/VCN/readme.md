sch: https://www.google.com/search?q=AMD+VCN+encoder+ubuntu https://www.google.com/search?q=AMD+VCN+encoder+test+ubuntu

# Guide:
## relation (for): HandBrake
https://handbrake.fr/docs/en/latest/technical/video-vcn.html


# Problem:
https://github.com/HandBrake/HandBrake/discussions/5026

Solution:
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
