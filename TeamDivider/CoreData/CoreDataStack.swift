import CoreData

// CoreDataのスタックを管理するクラス
class CoreDataStack {
    static let shared = CoreDataStack() // シングルトンインスタンス
    
    // 永続コンテナの初期化
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "TeamDividerApp")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        return container
    }()
    
    // コンテキストを取得
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    // コンテキストの変更を保存
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
