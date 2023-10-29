import SwiftUI

struct SettingsView: View {
    @State private var path = NavigationPath()
    private let pathDestination = PathDestination()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Button(AppPath.general.toString) {
                    path.append(AppPath.general.rawValue)
                }
                Button(AppPath.help.toString) {
                    path.append(AppPath.help.rawValue)
                }
                Button(AppPath.about.toString) {
                    path.append(AppPath.about.rawValue)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Int.self, destination: { appended in
                pathDestination.target(appPath: AppPath(rawValue: appended)!)
            })
        }
    }
}

#Preview {
    SettingsView()
}
