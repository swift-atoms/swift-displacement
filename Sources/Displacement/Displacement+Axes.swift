public import Vector

extension Displacement where N == 1 {
    public init(dx: Scalar) {
        self.init(components: Vector(x: dx))
    }

    public var dx: Scalar { components.x }
}

extension Displacement where N == 2 {
    public init(dx: Scalar, dy: Scalar) {
        self.init(components: Vector(x: dx, y: dy))
    }

    public var dx: Scalar { components.x }

    public var dy: Scalar { components.y }
}

extension Displacement where N == 3 {
    public init(dx: Scalar, dy: Scalar, dz: Scalar) {
        self.init(components: Vector(x: dx, y: dy, z: dz))
    }

    public var dx: Scalar { components.x }

    public var dy: Scalar { components.y }

    public var dz: Scalar { components.z }
}
