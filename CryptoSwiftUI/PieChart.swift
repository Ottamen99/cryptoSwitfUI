
import SwiftUI

struct PieChart: View {
  @Binding var data: [Double]
  @Binding var labels: [String]
  
  private let colors: [Color]
  private let borderColor: Color
  private let sliceOffset: Double = -.pi / 2
  
  
  init(data: Binding<[Double]>, labels: Binding<[String]>, colors: [Color], borderColor: Color) {
    self._data = data
    self._labels = labels
    self.colors = colors
    self.borderColor = borderColor
  }
  
  var body: some View {
    GeometryReader { geo in
      ZStack(alignment: .center) {
        ForEach(0 ..< data.count) { index in
          PieSlice(startAngle: startAngle(for: index), endAngle: endAngle(for: index))
                .stroke(lineWidth: 7.0).fill(colors[index % colors.count])
          
          PieSliceText(
            title: "\(labels[index])",
            description: ""
          ).foregroundColor(.white)
          .offset(textOffset(for: index, in: geo.size))
          .zIndex(1)
        }
          VStack {
              Text("Total Balance").font(.caption).fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/).foregroundColor(.white)
              Text("$ 60'000").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/).foregroundColor(.white)
              Text("BTC = 1.00243050").font(.caption).fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/).foregroundColor(.white)
              
          }
      }
    }
  }
  
  private func startAngle(for index: Int) -> Double {
    switch index {
      case 0:
        return sliceOffset
      default:
        let ratio: Double = data[..<index].reduce(0.0, +) / data.reduce(0.0, +)
        return sliceOffset + 2 * .pi * ratio
    }
  }
  
  private func endAngle(for index: Int) -> Double {
    switch index {
      case data.count - 1:
        return sliceOffset + 2 * .pi
      default:
        let ratio: Double = data[..<(index + 1)].reduce(0.0, +) / data.reduce(0.0, +)
        return sliceOffset + 2 * .pi * ratio
    }
  }
  
  private func textOffset(for index: Int, in size: CGSize) -> CGSize {
    let radius = min(size.width, size.height) / 3
    let dataRatio = (2 * data[..<index].reduce(0, +) + data[index]) / (2 * data.reduce(0, +))
    let angle = CGFloat(sliceOffset + 2 * .pi * dataRatio)
    return CGSize(width: radius * cos(angle), height: radius * sin(angle))
  }
}

struct PieSlice: Shape {
  let startAngle: Double
  let endAngle: Double
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let radius = min(rect.width, rect.height) / 2
    let alpha = CGFloat(startAngle)
    
    let center = CGPoint(
      x: rect.midX,
      y: rect.midY
    )
      path.addArc(
        center: center,
        radius: radius,
        startAngle: Angle(radians: startAngle),
        endAngle: Angle(radians: endAngle),
        clockwise: false
      )
    
    path.move(to: center)
    
    path.closeSubpath()
    
    return path
  }
}

struct PieSliceText: View {
  let title: String
  let description: String
  
  var body: some View {
    VStack {
      Text(title)
        .font(.headline)
      Text(description)
        .font(.body)
    }
  }
}

#if DEBUG
struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart(data: .constant([0.1, 0.5, 0.3, 0.1, 0.5, 0.3]), labels: .constant(["ETH", "ALG", "ADA", "BTC", "SHIB", "ZOOM"]), colors: [.blue, .green, .red, .gray, .black, .yellow], borderColor: .black)
    }
}
#endif
