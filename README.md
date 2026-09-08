# Displacement

Displacement<N, Scalar> represents an N-dimensional change, backed by Vector<N, Scalar>.
It conditionally supports additive arithmetic, equality, hashing, and sendability.
Scalar arithmetic determines precision and overflow behavior.

This is an available displacement representation, not a required wrapper.
Affine<Point, Displacement, Failure> can use Swift.Duration, a vector, or another
domain-owned type directly. Tag displacements when their frame/unit identity
requires it; point-domain tags do not automatically propagate to displacements.

## Construction

Importing Displacement also exports Vector; a separate Vector import is unnecessary.

```swift
import Displacement

let value = Displacement(dx: 1, dy: 2, dz: 3)
let precise: Displacement<3, Double> = .init(dx: 1, dy: 2, dz: 3)
let many = Displacement<8, Double>([1, 2, 3, 4, 5, 6, 7, 8])
let repeated = Displacement<8, Double>(repeating: 2)
let stored = Displacement(components: Vector(x: 1, y: 2, z: 3))

let first = value.dx
```

Named components are available in one, two, and three dimensions. Fixed component
lists must match the dimension at compile time. The existing storage initializer
remains available. These conveniences do not select a frame or change arithmetic.
