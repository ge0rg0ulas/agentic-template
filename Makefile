.PHONY: setup check test verify clean

setup:
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip ruff mypy pytest hypothesis

check:
	.venv/bin/ruff check .
	.venv/bin/mypy . --strict

test:
	.venv/bin/pytest -v --tb=short

verify: check test
	@echo "✅ DETERMINISTIC ORACLE PASSED: Όλοι οι έλεγχοι πέρασαν επιτυχώς."

clean:
	rm -rf .pytest_cache .mypy_cache .ruff_cache .hypothesis __pycache__
