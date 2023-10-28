import SwiftUI

struct TabsItemView<Content: View>: View {
    public let content: () -> Content
    public let text: String
    public let systemName: String
    public let badgeCount: Int
    
    init(_ content: @escaping () -> Content,
         text: String,
         systemName: String,
         badgeCount: Int = 0) {
        self.content = content
        self.text = text
        self.systemName = systemName
        self.badgeCount = badgeCount
    }
    
    var body: some View {
        content()
            .badge(badgeCount)
            .tabItem {
                Label(text, systemImage: systemName)
            }
    }
}

#Preview {
    TabView {
        TabsItemView({ Text("Sample1") },
                     text: "sample1",
                     systemName: "house.circle",
                     badgeCount: 5)
        TabsItemView({ Text("Sample2") },
                     text: "sample2",
                     systemName: "play.circle",
                     badgeCount: 5)
        TabsItemView({ Text("Sample3") },
                     text: "sample3",
                     systemName: "checkmark.seal.fill")
    }
}
