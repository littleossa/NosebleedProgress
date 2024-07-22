
import SwiftUI

extension NosebleedProgressView {
    
    enum Element: String, CaseIterable, Identifiable {
        case outline
        case nosebleedBottom
        case nosebleedBottomConcealment
        case mouth
        case mouthConcealment
        case nosebleedTop
        case nosebleedTopConcealmentRight
        case nosebleedTopConcealmentLeft
        case eyeRight
        case eyeLeft
        case tissue
        case tissueFrame
        case nose
        case noseConcealment
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .outline:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.65,
                    heightRatio: 0.65
                )
            case .nosebleedBottom:
                SymbolArtElement(
                    symbol: "􀭧",
                    name: "cellularbars",
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    widthRatio: 0.2,
                    heightRatio: 0.5,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.074
                )
            case .nosebleedBottomConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.1,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.15
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􀓩",
                    name: "lasso",
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.4,
                    heightRatio: 0.3,
                    rotationDegrees: 170,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: 0.05
                )
            case .mouthConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.5,
                    heightRatio: 0.3,
                    rotationDegrees: 176,
                    verticalOffsetRatio: -0.03
                )
            case .nosebleedTop:
                SymbolArtElement(
                    symbol: "􀭧",
                    name: "cellularbars",
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    widthRatio: 0.2,
                    heightRatio: 0.12,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.033,
                    verticalOffsetRatio: 0.096
                )
            case .nosebleedTopConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.1,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.06
                )
            case .nosebleedTopConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.04,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: -0.047,
                    verticalOffsetRatio: 0.09
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    primaryColor: .black,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: 0.117,
                    verticalOffsetRatio: -0.176
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    primaryColor: .black,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: -0.113,
                    verticalOffsetRatio: -0.17
                )
            case .tissue:
                SymbolArtElement(
                    symbol: "􀥨",
                    name: "doc.plaintext.fill",
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.04,
                    heightRatio: 0.08,
                    rotationDegrees: 188,
                    horizontalOffsetRatio: -0.052,
                    verticalOffsetRatio: 0.083
                )
            case .tissueFrame:
                SymbolArtElement(
                    symbol: "􀉆",
                    name: "doc.plaintext",
                    primaryColor: .black,
                    fontWeight: .light,
                    widthRatio: 0.04,
                    heightRatio: 0.08,
                    rotationDegrees: 188,
                    horizontalOffsetRatio: -0.052,
                    verticalOffsetRatio: 0.083
                )
            case .nose:
                SymbolArtElement(
                    symbol: "􀥰",
                    name: "triangleshape",
                    primaryColor: .black,
                    fontWeight: .light,
                    widthRatio: 0.15,
                    heightRatio: 0.14,
                    rotationDegrees: -4,
                    horizontalOffsetRatio: -0.013,
                    verticalOffsetRatio: -0.02
                )
            case .noseConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.02,
                    heightRatio: 0.13,
                    rotationDegrees: 148,
                    horizontalOffsetRatio: 0.007,
                    verticalOffsetRatio: -0.046
                )
            }
        }
        
        var isNosebleed: Bool {
            switch self {
            case .nosebleedBottom, .nosebleedTop:
                true
            default:
                false
            }
        }
    }
}

#Preview {
    NosebleedProgressView(diameter: 60, speed: 1)
}
