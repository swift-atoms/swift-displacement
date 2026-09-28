#if Tagged
@_exported public import Tagged

extension Tagged where Tag: ~Copyable & ~Escapable {
    public init<Scalar>(dx: Scalar)
    where Underlying == Displacement<1, Scalar> {
        self.init(_unchecked: Displacement(dx: dx))
    }

    public init<Scalar>(dx: Scalar, dy: Scalar)
    where Underlying == Displacement<2, Scalar> {
        self.init(_unchecked: Displacement(dx: dx, dy: dy))
    }

    public init<Scalar>(dx: Scalar, dy: Scalar, dz: Scalar)
    where Underlying == Displacement<3, Scalar> {
        self.init(_unchecked: Displacement(dx: dx, dy: dy, dz: dz))
    }
}
#endif
