//
//  ContentView.swift
//  Alura-Viagens
//
//  Created by Marcos Lacerda on 29/12/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 240 : 350, alignment: .top)

                List(viagens) { viagem in
                    TripCellView(viagem: viagem)
                }
                .listStyle(.plain)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.horizontalSizeClass, .compact)
            
            ContentView()
                .environment(\.horizontalSizeClass, .regular)
                .previewDevice(.init(stringLiteral: "iPad Pro (11-inch) (3rd generation)"))
        }
    }
}
