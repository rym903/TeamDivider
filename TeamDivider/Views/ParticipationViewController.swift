import UIKit

// 参加メンバー管理画面を担当するViewController
class ParticipationViewController: UIViewController, UITableViewDataSource {
    
    private var tableView: UITableView!
    private var members: [Member] = [] // メンバーのリスト
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView() // テーブルビューのセットアップ
        setupNavigationBar() // ナビゲーションバーのセットアップ
    }
    
    private func setupTableView() {
        // テーブルビューを初期化し、データソースを設定
        tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    private func setupNavigationBar() {
        // ナビゲーションバーにタイトルとリセットボタンを設定
        navigationItem.title = "Participation"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetCounts))
    }
    
    @objc private func resetCounts() {
        // ゲーム回数リセットのロジック
    }
    
    // テーブルビューの行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    // 各セルにメンバー情報を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "ParticipationCell")
        let member = members[indexPath.row]
        cell.textLabel?.text = member.name
        cell.detailTextLabel?.text = "Games: \(member.gameCount)"
        return cell
    }
}
