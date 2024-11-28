import UIKit

// エラーハンドリングのためのユーティリティクラス
class ErrorHandling {
    // エラーメッセージを表示
    static func showError(_ message: String, on viewController: UIViewController) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        viewController.present(alert, animated: true)
    }
}
