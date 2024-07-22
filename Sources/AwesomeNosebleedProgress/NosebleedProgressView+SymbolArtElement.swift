
import SwiftUI

extension NosebleedProgressView {
    
    struct SymbolArtElement {
        let symbol: String
        let name: String
        let primaryColor: Color
        let fontWeight: Font.Weight
        let widthRatio: CGFloat
        let heightRatio: CGFloat
        let rotationDegrees: CGFloat
        var flip: FlipType
        let horizontalOffsetRatio: CGFloat
        let verticalOffsetRatio: CGFloat
        
        init(
            symbol: String,
            name: String,
            primaryColor: Color,
            fontWeight: Font.Weight = .regular,
            widthRatio: CGFloat,
            heightRatio: CGFloat,
            rotationDegrees: CGFloat = 0,
            flip: FlipType = .none,
            horizontalOffsetRatio: CGFloat = 0,
            verticalOffsetRatio: CGFloat = 0
        ) {
            self.symbol = symbol
            self.name = name
            self.primaryColor = primaryColor
            self.fontWeight = fontWeight
            self.widthRatio = widthRatio
            self.heightRatio = heightRatio
            self.rotationDegrees = rotationDegrees
            self.flip = flip
            self.horizontalOffsetRatio = horizontalOffsetRatio
            self.verticalOffsetRatio = verticalOffsetRatio
        }
    }
}
