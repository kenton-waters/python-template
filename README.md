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

## Ruff
Use Ruff thusly for linting and formatting:
```
uvx ruff check           # Lint all files in the current directory (and any subdirectories).
uv run ruff check --fix  # Fix problems identified by 'check'.
uvx ruff format          # Format all files in the current directory (and any subdirectories).
```

It was installed thusly:
```
uv add --dev ruff  # Add Ruff to your project.
```

## VS Code
Extensions:
* Python (by Microsoft) includes:
    * Pylance
    * Python Debugger
    * Python Environments
* Ruff (by Astral Software)

## Nix
Enter the dev shell (that has uv) with `nix develop`.

Exit the shell with `exit`.

Upon entering the shell, the shellHook is executed, creating and activating a virtual environment, and installing the package our code defines. Examine flake.nix for more details.