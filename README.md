# PkgSymlinkExample

- running `./build-zeitpkgs-and-push-images.sh` installs node modules and creates pkgs for ServiceA and ServiceB

- test pkgs: 
  - ./Components/ServiceA/build/servicea
  - ./Components/ServiceB/build/serviceb

on macos building with pkg@4.5.1 this works, building with pkg@5.0.0 (and running with `node Components/ServiceA/app.js`) fails.


