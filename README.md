XlessEGL
========

EGL on Linux without X11 using KernelModeSetting

This simple demo is taken from the chromium project. It was modified to run in VMware Workstation VMs, too.
No X11 / Wayland / GLUT / Xrandr dependencies.
Run from Virtual Terminal, this examples won't start under X11.

Compile with: 
   make

Examples
--------
- eglkms: A bouncing red box.
- egltexkms: A bouncing textured box.
- eglbench: Benchmark for glDrawPixels, glTexSubImage2D, GL_ARB_pixel_buffer_object drawing to screen

Dependencies (Debian 8)
-----------------------
- gcc/g++/make
- libegl1-mesa
- libegl1-mesa-dev
- libegl1-mesa-drivers
- libgbm-dev
- libgbm1
- mesa-common-dev
- libdrm-dev
- libgl1-mesa
- libgl1-mesa-dev
- libgl1-mesa-glx

Dependencies (Ubuntu 16.04.2)
-----------------------------
- same as Debian 8
- change -I/usr/include/libdrm to -I/usr/include/drm in Makefile

However, compilation on ubuntu was unsuccessful so far.

Other hints
-----------
(libGL may need a symlink in /usr/lib/x86_64-linux-gnu/: ln -s libGL.so.1.6.0 libGL.so)
