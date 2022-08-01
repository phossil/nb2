{
  description = "dumb discord bot two: electric boogaloo";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs"; };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      packages.x86_64-linux = {
        ql = pkgs.lispPackages.quicklisp;
        openssl = pkgs.openssl_3;
      };

      devShell.x86_64-linux =
        pkgs.mkShell {
          buildInputs = [
            self.packages.x86_64-linux.ql
            self.packages.x86_64-linux.openssl
          ];
          nativeBuildInputs = [
            pkgs.rlwrap
            pkgs.lispPackages.slynk
          ];
          #LD_LIBRARY_PATH = "${$NIX_LISP_LD_LIBRARY_PATH}";
          LD_LIBRARY_PATH = "${self.packages.x86_64-linux.openssl.out}/lib";
        };
    };
}
