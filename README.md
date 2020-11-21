# Archlinux EPITA Build Essentials

</a>
<a href="https://hub.docker.com/r/iralorucrie/archlinux-epita-essentials">
<img alt="Docker Pull Count" src="https://img.shields.io/docker/pulls/iralorucrie/archlinux-epita-essentials?style=flat-square"/>
</a>

This is a *minimal* Archlinux Docker image with build tools for C for projects at EPITA.
It is based on `archlinux:base-devel` official Docker image.

It includes for the time being:
- `gcc`
- `make`
- `git`
- `valgrind`
- `tar`
- `wget`
- `cmake`
- `criterion` ([repo](https://github.com/Snaipe/Criterion))

# Using

The main reason I created this image is for GitLab CI, thus using this image with this
tool is pretty straight forward.

# License

Do literally whatever you want with this image.
