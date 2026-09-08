import Displacement
import Testing

@Suite struct `Displacements preserve their componentwise algebra` {
    private func dimension<let N: Int>(_ type: Vector<N, Int>.Type) {
        let delta = Displacement(components: Vector<N, Int>(InlineArray { $0 + 1 }))
        #expect(delta + .zero == delta)
        #expect(delta - delta == .zero)
        #expect(delta + delta - delta == delta)
        #expect(Set([delta, delta]).count == 1)
    }
    @Test func `Displacements preserve arithmetic in one two three and eight dimensions`() {
        dimension(Vector<1, Int>.self)
        dimension(Vector<2, Int>.self)
        dimension(Vector<3, Int>.self)
        dimension(Vector<8, Int>.self)
    }
}
