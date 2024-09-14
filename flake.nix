{
  description = "dumb discord bot two: electric boogaloo";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      lib = nixpkgs.lib;
    in
    {
      devShells.${system} = rec {
        default = _nb2;

        _nb2 = pkgs.mkShell rec {
          nativeBuildInputs = with pkgs; [
            rlwrap
            ccl
          ];
          buildInputs = with pkgs; [ openssl ];
          env = {
            LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
          };
        };
      };

      # make the flake look pretty :)
      formatter.${system} = pkgs.nixfmt-rfc-style;
    };
}
