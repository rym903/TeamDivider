import Foundation

// 参加メンバー管理画面のロジックを担当するViewModel
class ParticipationViewModel {
    private var members: [Member] = [] // メンバーのリスト
    
    // ゲーム回数をリセット
    func resetGameCounts() {
        for index in members.indices {
            members[index].gameCount = 0
        }
    }
    
    // メンバーのリストを取得
    func getMembers() -> [Member] {
        return members
    }
}
