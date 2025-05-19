{ pkgs }:

with pkgs;
let
  yarn2nix = yarn2nix-moretea.override {
    nodejs = nodejs_20;
    yarn = pkgs.yarn.override { inherit nodejs; };
  };
in yarn2nix.mkYarnPackage rec {
  name = "alvr-bot";
  src = ./.;
  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
  buildPhase = "yarn --offline run postinstall";
}
