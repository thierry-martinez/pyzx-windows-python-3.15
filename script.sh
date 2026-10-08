git clone https://github.com/thierry-martinez/graphix-mqtbench
cd graphix-mqtbench
git fetch origin add_openqasm_gates
git checkout --detach FETCH_HEAD
uv venv --python $1
uv pip install . 'numba>=0.65.1' pytest-mpl
uv run pytest -W error --doctest-modules
