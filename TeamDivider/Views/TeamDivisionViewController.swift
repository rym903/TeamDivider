import UIKit

// チーム分け画面を担当するViewController
class TeamDivisionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI() // UIのセットアップ
    }
    
    private func setupUI() {
        // UIコンポーネント（UISegmentedControlやGenerateボタン）のセットアップ
    }
    
    @objc private func generateTeams() {
        // チーム生成のロジック
    }
}
