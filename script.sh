git clone https://github.com/thierry-martinez/graphix-mqtbench
cd graphix-mqtbench
git fetch origin add_openqasm_gates
git checkout --detach FETCH_HEAD
uv venv --python $1
. .venv/Scripts/activate
pip install . 'numba>=0.65.1' pytest-mpl git+https://github.com/thierry-martinez/graphix.git@python-3.15
pytest -W error --doctest-modules
