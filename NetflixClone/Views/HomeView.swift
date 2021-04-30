//
//  HomeView.swift
//  NetflixClone
//
//  Created by Marc Jacques on 4/28/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(vm.allCategories, id: \.self) { category in
                VStack {
                    HStack {
                        Text(category)
                        Spacer()
                    }
                    
//                    ScrollView(.horizontal, showsIndicators: false) {
//                        HStack {
//                            ForEach(vm.getMovie(forCat: category)) { movie in
//                                
//                            }
//                        }
//                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
