# python-template
A template for python projects

## Nix
Enter the dev shell (that has uv) with `nix develop`.

Exit the shell with `exit`.

Upon entering the shell, the shellHook is executed, creating and activating a virtual environment, and installing the package our code defines. Examine flake.nix for more details.