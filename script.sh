git clone https://github.com/thierry-martinez/graphix-mqtbench
cd graphix-mqtbench
git fetch origin add_openqasm_gates
git checkout --detach FETCH_HEAD
uv run --python $1 --with . --with 'numba>=0.65.1' --with pytest-mpl --with git+https://github.com/thierry-martinez/graphix.git@python-3.15 pytest -W error --doctest-modules
