import UIKit

// メンバー管理画面を担当するViewController
class MemberListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var tableView: UITableView!
    private var members: [Member] = [] // メンバーのリスト
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView() // テーブルビューのセットアップ
        setupNavigationBar() // ナビゲーションバーのセットアップ
    }
    
    private func setupTableView() {
        // テーブルビューを初期化し、データソースとデリゲートを設定
        tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MemberTableViewCell.self, forCellReuseIdentifier: "MemberCell")
        view.addSubview(tableView)
    }
    
    private func setupNavigationBar() {
        // ナビゲーションバーにタイトルと追加ボタンを設定
        navigationItem.title = "Members"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addMember))
    }
    
    @objc private func addMember() {
        // メンバー追加のロジック
    }
    
    // テーブルビューの行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    // 各セルにメンバー情報を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemberCell", for: indexPath) as! MemberTableViewCell
        let member = members[indexPath.row]
        cell.configure(with: member)
        return cell
    }
}
