with import <nixpkgs> {}; {
    dotnetCliEnv = stdenv.mkDerivation {
        name = "dotnet-cli";
        buildInputs = [ cmake git clang libunwind openssl curl icu libuuid ];
	rpath = "${stdenv.cc.cc}/lib64";
	LD_PRELOAD = "${libuuid}/lib/libuuid.so.1:${libunwind}/lib/libunwind.so.8:${libunwind}/lib/libunwind-x86_64.so.8:${stdenv.cc.cc}/lib64/libstdc++.so.6";
    };
}
