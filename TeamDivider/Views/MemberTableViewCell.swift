import UIKit

// メンバーリストのセルをカスタマイズするクラス
class MemberTableViewCell: UITableViewCell {
    
    private var nameLabel: UILabel!
    private var participateButton: UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI() // UIのセットアップ
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        // 名前ラベルと参加ボタンを初期化し、レイアウトを設定
        nameLabel = UILabel()
        participateButton = UIButton(type: .system)
        participateButton.setTitle("Toggle", for: .normal)
        participateButton.addTarget(self, action: #selector(toggleParticipation), for: .touchUpInside)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(participateButton)
        
        // レイアウトコードをここに追加
    }
    
    // メンバー情報をセルに設定
    func configure(with member: Member) {
        nameLabel.text = member.name
        // メンバーのプロパティに基づいて他のUI要素を設定
    }
    
    @objc private func toggleParticipation() {
        // 参加フラグの切り替えロジック
    }
}
