//
//  HikeDetail.swift
//  Hiking
//
//  Created by Diego Jurfest Ceccon on 04/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageUrl)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles) + " miles")
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Niagara", imageUrl: "tam", miles: 10.0))
    }
}
