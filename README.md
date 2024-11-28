
フォルダ構成
TeamDividerApp/
├── TeamDividerApp.xcodeproj
├── TeamDividerApp/
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   ├── Models/
│   │   ├── Member.swift
│   │   ├── Group.swift
│   ├── Views/
│   │   ├── MemberListViewController.swift
│   │   ├── TeamDivisionViewController.swift
│   │   ├── ParticipationViewController.swift
│   │   ├── MemberTableViewCell.swift
│   ├── ViewModels/
│   │   ├── MemberViewModel.swift
│   │   ├── TeamDivisionViewModel.swift
│   │   ├── ParticipationViewModel.swift
│   ├── CoreData/
│   │   ├── CoreDataStack.swift
│   │   ├── Member+CoreDataClass.swift
│   │   ├── Member+CoreDataProperties.swift
│   ├── Resources/
│   │   ├── Assets.xcassets
│   │   ├── LaunchScreen.storyboard
│   │   ├── Main.storyboard
│   ├── Utils/
│   │   ├── UIColor+Extensions.swift
│   │   ├── ErrorHandling.swift


ソースファイルの概要
AppDelegate.swift / SceneDelegate.swift
アプリケーションのライフサイクルを管理します。

Models/
Member.swift: メンバーのデータモデルを定義します。名前、レベル、グループ、参加フラグなどのプロパティを持ちます。
Group.swift: グループのデータモデルを定義します。

Views/
MemberListViewController.swift: メンバー管理画面を担当します。UITableViewを使用してメンバーを表示し、追加・削除・参加不参加の切り替えを行います。
TeamDivisionViewController.swift: チーム分け画面を担当します。コート数の指定、チームの生成、ドラッグ&ドロップによる組み合わせの変更を行います。
ParticipationViewController.swift: 参加メンバー管理画面を担当します。ゲーム回数の表示とリセットを行います。
MemberTableViewCell.swift: メンバーリストのセルをカスタマイズします。レベルに応じた色付けや参加不参加ボタンを配置します。

ViewModels/
MemberViewModel.swift: メンバー管理画面のロジックを担当します。データの取得やフィルタリングを行います。
TeamDivisionViewModel.swift: チーム分け画面のロジックを担当します。チームの生成やメンバーのゲーム回数管理を行います。
ParticipationViewModel.swift: 参加メンバー管理画面のロジックを担当します。ゲーム回数の管理を行います。

CoreData/
CoreDataStack.swift: CoreDataのスタックを管理します。データの保存や取得を行います。
Member+CoreDataClass.swift / Member+CoreDataProperties.swift: CoreDataのエンティティとしてのMemberクラスを定義します。

Resources/
Assets.xcassets: 画像や色などのリソースを管理します。
LaunchScreen.storyboard / Main.storyboard: アプリのUIを構築するためのストーリーボードです。

Utils/
UIColor+Extensions.swift: UIColorの拡張を定義し、レベルに応じた色を設定します。
ErrorHandling.swift: エラーハンドリングのためのユーティリティを提供します。
