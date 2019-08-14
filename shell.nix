{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  my-python-packages = python-packages: with python-packages; [
    virtualenv
    pytest
  ];
  my-python = python3.withPackages my-python-packages;
in mkShell {
  buildInputs = [
    vscodium
    rustup
    nodejs
    my-python
  ];
}
