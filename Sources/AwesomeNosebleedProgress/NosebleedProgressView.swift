
import SwiftUI

struct NosebleedProgressView: View {
    
    let diameter: CGFloat
    let speed: CGFloat
    
    var body: some View {
        
        ZStack {
            ForEach(Element.allCases) {
                Image(systemName: $0.value.name)
                    .resizable()
                    .foregroundStyle(
                        $0.value.primaryColor
                    )
                    .fontWeight($0.value.fontWeight)
                    .frame(
                        width: diameter * $0.value.widthRatio,
                        height: diameter * $0.value.heightRatio
                    )
                    .rotationEffect(.degrees($0.value.rotationDegrees))
                    .rotation3DEffect(.degrees(180),
                                      axis: $0.value.flip.axis,
                                      anchorZ: 0)
                    .offset(x: $0.value.horizontalOffsetRatio * diameter,
                            y: $0.value.verticalOffsetRatio * diameter)
                    .symbolEffect(.variableColor.hideInactiveLayers,
                                  options: .speed(speed).repeating,
                                  isActive: $0.isNosebleed)
            }
        }
    }
}

#Preview {
    NosebleedProgressView(diameter: 60, speed: 1)
}
