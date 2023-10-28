import SwiftUI

struct TabsItemView<Content: View>: View {
    private let content: () -> Content
    private let text: String
    private let systemName: String
    private let badgeCount: Int
    private let tag: Int
    
    init(_ content: @escaping () -> Content,
         text: String,
         systemName: String,
         tag: Int,
         badgeCount: Int = 0) {
        self.content = content
        self.text = text
        self.systemName = systemName
        self.tag = tag
        self.badgeCount = badgeCount
    }
    
    var body: some View {
        content()
            .badge(badgeCount)
            .tabItem {
                Label(text, systemImage: systemName)
            }
            .tag(tag)
    }
}

#Preview {
    TabView {
        TabsItemView({ Text("Sample1") },
                     text: "sample1",
                     systemName: "house.circle",
                     tag: 0,
                     badgeCount: 5)
        TabsItemView({ Text("Sample2") },
                     text: "sample2",
                     systemName: "play.circle",
                     tag: 1,
                     badgeCount: 5)
        TabsItemView({ Text("Sample3") },
                     text: "sample3",
                     systemName: "checkmark.seal.fill",
                     tag: 2)
    }
}
