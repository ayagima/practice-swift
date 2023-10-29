import SwiftUI

struct SampleList: View {
    @State private var path = NavigationPath()
    private let pathDestination = PathDestination()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Button(AppPath.memo.toString) {
                    path.append(AppPath.memo.rawValue)
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
    SampleList()
}
