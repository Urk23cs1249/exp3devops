from app import add

def test_add():
    # These assertions must be indented
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
