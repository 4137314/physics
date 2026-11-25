{
  description = "Physics: quantum mechanics, quantum optics, QED, electromagnetic fields, photonics and electronics (English study knowledge base)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    knowledge-base = {
      url = "git+ssh://git@github.com/4137314/knowledge-base";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, knowledge-base }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      study = knowledge-base.lib.mkReader pkgs {
        name = "physics";
        notes = "study/kb";
        config = "study/kb-config.el";
        rootVar = "PHYSICS_ROOT";
      };
    in {
      packages.${system} = { inherit study; default = study; };
      apps.${system}.default = {
        type = "app";
        program = "${study}/bin/physics-study";
      };
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.gnumake pkgs.python3 pkgs.poppler_utils pkgs.ngspice ];
        shellHook = ''echo "physics: make help (knowledge base: make study)"'';
      };
    };
}
