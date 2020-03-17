let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ./overlay.nix)
    ];
  };
in
  pkgs.mkShell {
    buildInputs = [ 
      pkgs.python3Packages.mecode
    ];
  }
