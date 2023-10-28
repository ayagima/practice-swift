import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            TabsItemView({ Text("Home") },
                         text: "Sample",
                         systemName: "house")
            TabsItemView({ SampleList() },
                         text: "Sample",
                         systemName: "list.bullet.rectangle.portrait")
            TabsItemView({ Text("Settings") },
                         text: "Settings",
                         systemName: "gearshape")
        }
    }
}

#Preview {
    TabsView()
}
