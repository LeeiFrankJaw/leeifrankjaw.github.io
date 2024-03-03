#!/usr/bin/python3

def f(a, m, x):
    assert x**2 < a

    n = 1
    while m >= n*(a - x**2):
        n += 1

    assert n * x**2 < n * x**2 + m < n * a

    return a, m, x, n


def g(a, m, x, n):
    m_2 = int(n * x) + 1

    while m_2**2 > n**2 * a:
        a, m, x, n = f(a, m+1, x)
        m_2 = int(n * x) + 1

    return a, m, x, n, m_2, a - (m_2/n)**2
