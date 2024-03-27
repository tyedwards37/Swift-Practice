//
//  ContentView.swift
//  pokemonState
//
//  Created by student on 3/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var pokemonName = "Charmander"
    
    var body: some View {
        VStack {
            Text(pokemonName)
                .frame(
                    width: 400, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            Button(action: {self.switchPokemon()}, label: {Text("Switch")})
        }
        .padding()
    }
    
    func switchPokemon() {
        let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
        self.pokemonName = list.randomElement() ?? ""
    }
}

#Preview {
    ContentView()
}
