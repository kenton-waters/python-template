# python-template
A template for python projects

## uv
uv docs: https://docs.astral.sh/uv/getting-started/features/
* `uv init`: Create a new Python project.
* `uv add`: Add a dependency to the project.
    * e.g. `uv add requests`
* `uv remove`: Remove a dependency from the project.
* `uv sync`: Sync the project's dependencies with the environment.

To install your python package to make it available for execution:
```
uv pip install -e . # Addresses "No module named python-template"
```

To execute your package if it is executable and installed in the venv:
```
uv run python -m python-template
```

To upgrade a package, run uv lock with the --upgrade-package flag:

```
uv lock --upgrade-package requests
```

## Nix
Enter the dev shell (that has uv) with `nix develop`.

Exit the shell with `exit`.

Upon entering the shell, the shellHook is executed, creating and activating a virtual environment, and installing the package our code defines. Examine flake.nix for more details.