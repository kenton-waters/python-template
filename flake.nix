{
  description = "Python development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShellNoCC {
        buildInputs = with pkgs; [
          uv
        ];

        shellHook = ''
          # Fails if the python virtual environment already exists:
          uv venv

          # Activates the python virutal environment:
          source .venv/bin/activate

          # Installs the python package defined in this repository
          uv pip install -e .
        '';
      };
    };
}