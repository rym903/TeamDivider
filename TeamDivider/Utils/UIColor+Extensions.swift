import UIKit

// UIColorの拡張を定義し、レベルに応じた色を設定
extension UIColor {
    static func color(forLevel level: Int) -> UIColor {
        switch level {
        case 1:
            return .red
        case 2:
            return .green
        case 3:
            return .blue
        default:
            return .black
        }
    }
}
