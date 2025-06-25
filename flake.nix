{
  description = "";
  inputs = { nixpkgs.url = "github:nixos/nixpkgs/24.11"; };
  outputs = { nixpkgs, ... }:
    let
      pkgs = import nixpkgs { inherit system; };
      system = "x86_64-linux";
    in {
      devShells.${system} = {
        default = pkgs.mkShell {
          # nativeBuildInputs is usually what you want -- tools you need to run
          nativeBuildInputs = with pkgs.buildPackages; [ mdbook ];
        };
      };
    };
}
