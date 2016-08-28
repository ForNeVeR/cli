DOTNET_INSTALL_DIR=./.dotnet_stage0/$(uname) DOTNET_INSTALL_SKIP_PREREQS=1 bash scripts/obtain/dotnet-install.sh
patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) --set-rpath $rpath ./.dotnet_stage0/Linux/dotnet
DOTNET_INSTALL_SKIP_PREREQS=1 ./build.sh

