echo "deb https://repo.radeon.com/amdgpu/5.7.1/ubuntu jammy proprietary" | sudo tee /etc/apt/sources.list.d/amdgpu-proprietary.list

sudo apt update

amdgpu-install --opencl=legacy

# from: https://www.reddit.com/r/ROCm/comments/1cme2gx/comment/l30r3wb/
