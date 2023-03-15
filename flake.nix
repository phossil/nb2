{
  description = "dumb discord bot two: electric boogaloo";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-cl.url = "github:Uthar/nix-cl/v0.2.0";
  };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      # aaaaa
    };
}
