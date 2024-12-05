//
//  MissionListLayout.swift
//  Moonshot
//
//  Created by Ellie on 9/22/24.
//

import SwiftUI

struct MissionListLayout: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    var body: some View {
        
            List(missions) { mission in
                NavigationLink(value: mission) {
                       
                        HStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            VStack(alignment: .leading) {
                                Text(mission.displayName)
                                    .font(.headline)
                                Text(mission.formattedLaunchDate)
                                   
                            }

                        }
                       
                      
                    
                }
                    .listRowBackground(Color.darkBackground)
                                               
            }
            .listStyle(.plain)
           
        }
    }



#Preview {
    MissionListLayout(missions: Bundle.main.decode("missions.json"), astronauts: Bundle.main.decode("astronauts.json"))
        .preferredColorScheme(.dark)
}
