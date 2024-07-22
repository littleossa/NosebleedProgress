
import SwiftUI

public struct NosebleedProgressViewStyle: ProgressViewStyle {
    /// Diameter of face
    let diameter: CGFloat
    /// Speed of nosebleeding
    let speed: CGFloat
    
    public func makeBody(configuration: Configuration) -> some View {
        NosebleedProgressView(diameter: diameter, speed: speed)
    }
}

public extension ProgressViewStyle where Self == NosebleedProgressViewStyle {
    static func nosebleed(diameter: CGFloat = 60, speed: CGFloat = 1) -> NosebleedProgressViewStyle {
        NosebleedProgressViewStyle(diameter: diameter, speed: speed)
    }
}

