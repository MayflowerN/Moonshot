//
//  ContentView.swift
//  Moonshot
//
//  Created by Ellie on 9/17/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Image("moonshot")
//            .resizable()
//            .scaledToFill()
//            .containerRelativeFrame(.horizontal) { size, axis in
//                    size * 0.8
//                }
//            
//    }
//}
//
//#Preview {
//    ContentView()
//}







//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHStack(spacing: 10) {
//                ForEach(0..<100) {
//                    CustomText("Item \($0)")
//                        .font(.title)
//                }
//            }
//            .frame(maxWidth: .infinity)
//        }
//        
//    }
//}
//        #Preview {
//            ContentView()
//        }
//    
//struct CustomText: View {
//    let text: String
//    
//    var body: some View {
//        Text(text)
//    }
//    init(_ text: String) {
//        print("Creating a new CustomText")
//        self.text = text
//    }
//}






//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
//                        .navigationTitle("SwiftUI")
//        }
//        
//    }
//}
//        #Preview {
//            ContentView()
//        }
//    





//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List(0..<100) { row in
//               NavigationLink("Row \(row)") {
//                    Text("Detail \(row)")
//                }
//            }
//                        .navigationTitle("SwiftUI")
//        }
//        
//    }
//}
//        #Preview {
//            ContentView()
//        }
//    







//import SwiftUI
//struct User: Codable {
//    let name: String
//    let address: Address
//}
//struct Address: Codable {
//    let street: String
//    let city: String
//}
//struct ContentView: View {
//    var body: some View {
//        Button("Decode JSON") {
//            let input = """
//            {
//                "name": "Taylor Swift",
//                "address": {
//                    "street": "555, Taylor Swift Avenue",
//                    "city": "Nashville"
//                }
//            }
//            """
//
//            let data = Data(input.utf8)
//            let decoder = JSONDecoder()
//            if let user = try? decoder.decode(User.self, from: data) {
//                print(user.address.street)
//            }
//        
//        }
//        
//    }
//}
//        #Preview {
//            ContentView()
//        }
//    
//
//
//




//import SwiftUI
//
//struct ContentView: View {
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach (0..<1000) {
//                    Text("Item \($0)")
//            }
//            }
//        
//        }
//        
//    }
//}
//        #Preview {
//            ContentView()
//        }
//    






import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach (0..<1000) {
                    Text("Item \($0)")
            }
            }
        
        }
        
    }
}
        #Preview {
            ContentView()
        }
    
