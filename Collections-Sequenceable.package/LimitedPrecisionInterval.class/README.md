A LimitedPrecisionInterval is an Interval whose bounds or step haveLimitedPrecision.
Due to inexact arithmetic, special precautions must be taken in the implementation,
in order to avoid unconsistent and surprising behavior as much as possible.

Despite those efforts, LimitedPrecisionInterval is full of pitfalls.
It is recommended to avoid using LimitedPrecisionInterval unless understanding those pitfalls.
For example, (0.2 to: 0.6 by: 0.1) last = 0.5.
This interval does not includes 0.6 because (0.1*4+0.2) is slightly greater than 0.6.
Another example is that (0.2 to: 0.6 by: 0.1) does not include 0.3 but a Float slightly greater.

A usual workaround is to use an Integer interval, and reconstruct the Float inside the loop.
For example:
    (0 to: 4) collect: [:i | 0.1*i+0.2].
or better if we want to have 0.3 and 0.6:
    (2 to: 6) collect: [:i | i / 10.0].
Another workaround is to not use limited precision at all, but Fraction or ScaledDecimal when possible:
    (1/10 to: 7/10 by: 1/10).
    (0.1s to: 0.7s by: 0.1s).

Yet another pitfall is that optimized to:by:do: might differ from (to:by:) do:
In the former case, repeated addition of increment is used, in the later, a multiplication is used.
Observe the differences:
    Array streamContents: [:str | 0 to: 3 by: 0.3 do: [:e | str nextPut: e]].
    Array streamContents: [:str | (0 to: 3 by: 0.3) do: [:e | str nextPut: e]].

There are many more discrepancies, so use carefully, or not use it at all.