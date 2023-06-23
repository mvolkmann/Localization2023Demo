import SwiftUI

struct ContentView: View {
    @State private var dogCount = 1
    @State private var squirrelCount = 1

    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("Tap the button to win big!")
            Stepper("Dog Count", value: $dogCount)
            Stepper("Squirrel Count", value: $squirrelCount)
            Text(
                String(
                    localized: "The \(dogCount) dogs barked at the \(squirrelCount) squirrels."
                )
            )
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
