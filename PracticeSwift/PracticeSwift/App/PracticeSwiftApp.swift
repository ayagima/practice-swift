import SwiftUI

@main
struct PracticeSwiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SampleList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
