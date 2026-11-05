# swift-displacement

Use this package when a value says how far and in which direction to move, the difference between two positions, not a position itself. Start from `Displacement<N, Scalar>`, which wraps the `Vector<N, Scalar>` it re-exports with no change in representation. For a position, use the Point type from swift-point. For components with no positional meaning, use `Vector<N, Scalar>` directly. For a transformation that moves things by a displacement, use the Translation type from swift-translation.

## Laws

- Addition, subtraction and `zero` act component by component on `components`, so displacements form an additive group in every dimension: adding `zero` changes nothing, a displacement minus itself is `zero`, and adding then subtracting the same displacement returns the original whenever `Scalar` arithmetic is exact. With floating-point scalars the round trip can be off by rounding.
- Two displacements are equal, and hash the same, exactly when their `components` are equal.
