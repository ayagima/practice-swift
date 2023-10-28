import Foundation

enum AppPath: Int {
    case root
    case sampleList
    case settings
    
    var toString: String {
        ["ホーム", "サンプル", "設定"][self.rawValue]
    }
}
