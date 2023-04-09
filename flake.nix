{
  description = "dumb discord bot two: electric boogaloo";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      lib = nixpkgs.lib;
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          rlwrap
          sbcl
        ];
        buildInputs = with pkgs; [
          openssl
        ];
        LD_LIBRARY_PATH = lib.makeLibraryPath (with pkgs;
          [
            openssl
          ]);
      };

      # make the flake look pretty :)
      formatter.${system} = pkgs.nixpkgs-fmt;
    };
}
