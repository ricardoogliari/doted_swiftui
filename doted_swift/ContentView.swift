//
//  ContentView.swift
//  doted_swift
//
//  Created by Ricardo on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        print("entrou no ContentView")
        return TabView {
            MapView()
                .tabItem {
                    Label(
                        "Map View",
                        systemImage: "map")
                }
            StoryList()
                .tabItem {
                    Label(
                        "List View",
                        systemImage: "list.bullet")
                }
        }.environmentObject(locationManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(LocationManager())
    }
}
