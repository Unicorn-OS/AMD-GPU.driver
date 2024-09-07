# OpenCL (Optional Component) || user permission
Doc: https://amdgpu-install.readthedocs.io/en/latest/install-installing.html#opencl-optional-component

>To use the ROCr implementation of OpenCL, the running user might need additional permissions depending on OS policy. If clinfo or any openCL application does not work, check ownership and permissions of the render nodes:
>
>`ls -l /dev/dri/render*`
>
>If the render nodes are owned by group render but not readable and writable by all users, consider adding the current user to the render group:
>
>`sudo usermod -a -G render $LOGNAME`
>
>If you are an administrator, $LOGNAME can be replaced by any valid username.
>
>Alternatively, if the render nodes are owned by the video group but not readable and writable by all users, consider adding the current user to the video group:
>
>`sudo usermod -a -G video $LOGNAME`
>
>Different Linux distributions have different ownership and permission policies for render nodes.
