import Foundation

// メンバー管理画面のロジックを担当するViewModel
class MemberViewModel {
    private var members: [Member] = [] // メンバーのリスト
    
    // メンバーを追加
    func addMember(_ member: Member) {
        members.append(member)
    }
    
    // 指定したインデックスのメンバーを削除
    func removeMember(at index: Int) {
        members.remove(at: index)
    }
    
    // 指定したインデックスのメンバーの参加フラグを切り替え
    func toggleParticipation(for index: Int) {
        members[index].isParticipating.toggle()
    }
    
    // メンバーのリストを取得
    func getMembers() -> [Member] {
        return members
    }
}
