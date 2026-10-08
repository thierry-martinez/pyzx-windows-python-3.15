git clone https://github.com/TeamGraphix/graphix-qasm-parser
cd graphix-qasm-parser
uv run --python $1 --with . --with 'numba>=0.65.1' --with pytest-mpl --with git+https://github.com/thierry-martinez/graphix.git@python-3.15 pytest -W error --doctest-modules
