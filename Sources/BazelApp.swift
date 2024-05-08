import SwiftUI
import Hello

@main
struct BazelApp: App {
    var body: some Scene {
        WindowGroup {
            Text("Hello from Bazel! \(get_a_value_from_cc())")
        }
    }
}