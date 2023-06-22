import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("Dinner time")
        }
        .padding()
    }
}

#Preview("English") {
    ContentView()
        .environment(\.locale, .init(identifier: "en"))
}

#Preview("Spanish") {
    ContentView()
        .environment(\.locale, .init(identifier: "es"))
}

#Preview("French") {
    ContentView()
        .environment(\.locale, .init(identifier: "fr"))
}
