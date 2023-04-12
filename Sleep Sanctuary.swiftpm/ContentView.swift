import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("main"))
            VStack{
                HStack(spacing: 20) {
                    Circle()
                        .foregroundColor(.white)
                        .overlay {
                            Image("placeholder")
                        }
                    Spacer()
                    Circle()
                        .foregroundColor(.white)
                        .foregroundColor(.white)
                        .overlay {
                            Image("placeholder")
                        }
                }
                .padding(.horizontal, 40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
