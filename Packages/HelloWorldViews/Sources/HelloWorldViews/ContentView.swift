import SwiftUI

public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, CLI World!")
            .font(.largeTitle)
            .fontWeight(.bold)
        }
        .padding()
    }

}
