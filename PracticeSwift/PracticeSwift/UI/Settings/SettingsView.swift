import SwiftUI

struct SettingsView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Button("一般") {
                    path.append(0)
                }
                Button("ヘルプ") {
                    path.append(1)
                }
                Button("このアプリについて") {
                    path.append(2)
                }
            }
            .navigationTitle("ホーム")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Int.self, destination: { appended in
                Text("hoge\(appended)")
            })
        }
    }
}

#Preview {
    SettingsView()
}
