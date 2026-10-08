git clone https://github.com/thierry-martinez/graphix-mqtbench
cd graphix-mqtbench
git fetch origin add_openqasm_gates
git checkout --detach FETCH_HEAD
uv venv
uv pip install . 'numba>=0.65.1'
pytest -W error --doctest-modules
