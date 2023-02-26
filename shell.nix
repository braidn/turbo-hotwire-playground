with (import <nixpkgs> {});

let
  rubyenv = bundlerEnv {
    name = "hotwire-turbo";
    inherit ruby_3_1;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemdir = ./.;
    groups = ["development" "test"];
  };
in stdenv.mkDerivation {
  name = "hotwire-turbo";
  version = "0.0.1";

  buildInputs = [
    # Ruby deps
    bundler
    bundix

    # Rails deps
    clang
    libxml2
    libxslt
    openssl
    readline
    zlib
    postgresql
    rubyenv
  ];

  shellHook = ''
    mkdir -p .nix-gems

    export LIBXML2_DIR=${pkgs.libxml2}
    export LIBXSLT_DIR=${pkgs.libxslt}
    export GEM_HOME=$PWD/.nix-gems
    export GEM_PATH=$GEM_HOME
    export PATH=$GEM_HOME/bin:$PATH
    export PATH=$PWD/bin:$PATH

    gem list -i ^bundler$ -v 2.4.6 || gem install bundler --version=2.4.6 --no-document
    bundle config --local path vendor/cache
    bundle config build.sassc --disable-lto
  '';
}
