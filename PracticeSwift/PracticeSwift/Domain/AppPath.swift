import Foundation

enum AppPath: Int {
    case root
    case sampleList
    case settings
    case general
    case help
    case about
    case memo
    
    var toString: String {
        ["ホーム", "サンプル", "設定",
         "一般", "ヘルプ", "このアプリについて",
         "メモ"
        ][self.rawValue]
    }
}
