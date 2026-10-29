from hypothesis import given
from hypothesis import strategies as st


@given(st.integers(), st.integers())
def test_addition_commutativity(a: int, b: int) -> None:
    assert a + b == b + a
