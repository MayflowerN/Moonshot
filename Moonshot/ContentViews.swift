//
//  ContentViews.swift
//  Moonshot
//
//  Created by Ellie on 9/19/24.
//

import SwiftUI

struct ContentViews: View {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    @State private var showingGrid = false
    var body: some View {
        NavigationStack {
            
            Group {
                if showingGrid {
                    MissionGridLayout(astronauts: astronauts, missions: missions)
                }
                else {
                    MissionListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .toolbar {
                Button {
                    showingGrid.toggle()
                }
            label: {
                if showingGrid {
                    Label("Show as table", systemImage: "list.dash")
                } else {
                    Label("Show as grid", systemImage: "square.grid.2x2")
                }
            }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .navigationDestination(for: Mission.self) { mission in
                MissionView(mission: mission, astronauts: astronauts)
            }
        }
            }
        }
    


#Preview {
    ContentViews()
}
