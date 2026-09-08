@_exported public import Vector

/// An N-dimensional displacement. Domain-specific types such as Swift.Duration
/// may also be used directly as displacements by an affine structure.
public struct Displacement<let N: Int, Scalar> {
    public let components: Vector<N, Scalar>

    public init(components: Vector<N, Scalar>) { self.components = components }
    public subscript(index: Int) -> Scalar { components[index] }
}

extension Displacement: Equatable where Scalar: Equatable {}
extension Displacement: Hashable where Scalar: Hashable {}
extension Displacement: Sendable where Scalar: Sendable {}

extension Displacement: AdditiveArithmetic where Scalar: AdditiveArithmetic {
    public static var zero: Self { Self(components: .zero) }
    public static func + (lhs: Self, rhs: Self) -> Self {
        Self(components: lhs.components + rhs.components)
    }
    public static func - (lhs: Self, rhs: Self) -> Self {
        Self(components: lhs.components - rhs.components)
    }
}
