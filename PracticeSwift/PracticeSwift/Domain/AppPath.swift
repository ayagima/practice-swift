import Foundation

enum AppPath: Int {
    case root
    case sampleList
    case settings
    case general
    case help
    case about
    
    var toString: String {
        ["ホーム", "サンプル", "設定",
         "一般", "ヘルプ", "このアプリについて"
        ][self.rawValue]
    }
}
