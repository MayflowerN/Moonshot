//
//  MissionGridLayout.swift
//  Moonshot
//
//  Created by Ellie on 9/22/24.
//

import SwiftUI

struct MissionGridLayout: View {
    
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    let columns = [ GridItem(.adaptive(minimum: 150)) ]

    var body: some View {
        ScrollView {
        LazyVGrid(columns: columns) {
            ForEach(missions) { mission in
                NavigationLink(value: mission) {
                    VStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.5))
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.lightBackground)
                    }
                    .clipShape(.rect(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground))
                }
                }
            }
        }
           
        }
    }


#Preview {

    MissionGridLayout(astronauts: Bundle.main.decode("astronauts.json"), missions: Bundle.main.decode("missions.json"))
        .preferredColorScheme(.dark)
}
