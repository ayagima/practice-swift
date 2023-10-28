import SwiftUI

class PathDestination {    
    @ViewBuilder
    func target(appPath: AppPath) -> some View {
        switch appPath {
        case .root: HomeView()
        case .sampleList: SampleList()
        case .settings: SettingsView()
        }
    }
}
