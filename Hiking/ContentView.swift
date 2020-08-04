//
//  ContentView.swift
//  Hiking
//
//  Created by Diego Jurfest Ceccon on 03/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetail(hike: hike)) {
                        HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.imageUrl).resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles) + " miles")
            }
            
        }
    }
}
