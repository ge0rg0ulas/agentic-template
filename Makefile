.PHONY: setup check test test-cpp verify clean

setup:
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip ruff mypy pytest hypothesis numpy scipy

check:
	.venv/bin/ruff check .
	.venv/bin/mypy --strict src tests

test:
	.venv/bin/pytest -q

test-cpp:
	mkdir -p build
	clang++ -std=c++20 -O2 -Wall -Wextra -Werror -fsanitize=address,undefined cpp/test_main.cpp -o build/test_cpp
	./build/test_cpp

verify: check test test-cpp
	@echo "✅ DETERMINISTIC ORACLE PASSED: Python + C++20 ASan/UBSan OK"

clean:
	rm -rf build obj_dir .pytest_cache .mypy_cache .ruff_cache .hypothesis
