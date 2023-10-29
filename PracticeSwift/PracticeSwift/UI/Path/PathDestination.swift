import SwiftUI

class PathDestination {    
    @ViewBuilder
    func target(appPath: AppPath) -> some View {
        switch appPath {
        case .root: HomeView()
        case .sampleList: SampleList()
        case .settings: SettingsView()
        case .general: Text("一般")
        case .help: Text("ヘルプ")
        case .about: Text("このアプリについて")
        case .memo: MemoFieldView()
        }
    }
}
