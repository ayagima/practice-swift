import SwiftUI

struct TabsView: View {
    @State private var selection: Int = AppPath.root.rawValue
    private let pathDestination = PathDestination()
    
    var body: some View {
        TabView(selection: $selection) {
            TabsItemView({ pathDestination.target(appPath: AppPath.root) },
                         text: AppPath.root.toString,
                         systemName: "house",
                         tag: AppPath.root.rawValue)
            TabsItemView({ pathDestination.target(appPath: AppPath.sampleList) },
                         text: AppPath.sampleList.toString,
                         systemName: "list.bullet.rectangle.portrait",
                         tag: AppPath.sampleList.rawValue)
            TabsItemView({ pathDestination.target(appPath: AppPath.settings) },
                         text: AppPath.settings.toString,
                         systemName: "gearshape",
                         tag: AppPath.settings.rawValue)
        }
    }
}

#Preview {
    TabsView()
}
