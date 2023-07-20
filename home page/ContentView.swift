//
//  ContentView.swift
//  home page
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            Color(hex: "F6EFE8")
               .ignoresSafeArea()
             VStack {
               Image("")
               Image(systemName: "")
                 .font(.system(size: 100))
                 
                 Text("RevvIT")
                     .font(.system(size: 60))
                     .fontWeight(.medium)
                     .foregroundColor(Color(hex: "8b9475"))
                     .shadow(radius: 2)
                    
                 Image("lilypad")
                     .resizable(resizingMode: .stretch)
                     .aspectRatio(contentMode: .fit)
                     .shadow(radius: 1)
                     .opacity(0.7)

               NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                 HStack{
                   VStack(alignment: .leading){
                     Text("Check-in:")
                       .font(.title)
                       .foregroundColor(Color(hex: "8b8b8b"))
                       Text("How are you\nfeeling?")
                           .fontWeight(.light)
                       .foregroundColor(Color.black)
                       .multilineTextAlignment(.leading)
                   }
                   .frame(maxWidth: .infinity, alignment: .leading)
                   Image(systemName: "chevron.right")
                     .foregroundColor(Color.black)
                 }
                 .padding(.horizontal, 30)
                 .padding(.vertical, 10)
                 .background(Color(hex: "eaece2"))
                 .mask(RoundedRectangle(cornerRadius: 20))
                 .shadow(radius:5)
               }
               .padding()
               NavigationLink(destination: Text("")){
                 HStack{
                   VStack(alignment: .leading) {
                     Text("Journal:")
                       .font(.title)
                       .foregroundColor(Color(hex: "000000"))
                       Text("write down your \nthoughts...")
                           .fontWeight(.light)
                       .foregroundColor(Color(hex: "687844"))
                       .padding(.horizontal, 30)
                       .padding(.vertical, 10)
                       .background(Color(hex: "aeb79b"))
                       .mask(RoundedRectangle(cornerRadius: 10))
                       .multilineTextAlignment(.leading)
                   }
                   .frame(maxWidth: .infinity, alignment: .leading)
                   Image(systemName: "chevron.right")
                     .foregroundColor(Color.black)
                 }
                 .padding(.horizontal, 30)
                 .padding(.vertical, 10)
                 .background(Color(hex: "CDD7B6"))
                 .mask(RoundedRectangle(cornerRadius: 20))
                 .shadow(radius:5)
               }
               .padding()
               NavigationLink(destination: Text("")){
                 HStack{
                   VStack(alignment: .leading) {
                     Text("Habit Tracker:")
                       .font(.title)
                       .foregroundColor(Color(hex: "000000"))
                   }
                   .frame(maxWidth: .infinity, alignment: .leading)
                   Image(systemName: "chevron.right")
                     .foregroundColor(Color.black)
                 }
                 .padding(.horizontal, 30)
                 .padding(.vertical, 10)
                 .background(Color(hex: "eaece2"))
                 .mask(RoundedRectangle(cornerRadius: 20))
                 .shadow(radius:5)
                   
               }
               .padding()
               NavigationLink(destination: Text("")){
                 HStack{
                   VStack(alignment: .leading) {
                     Text("placeholder!")
                       .font(.title)
                       .foregroundColor(Color(hex: "000000"))
                   }
                   .frame(maxWidth: .infinity, alignment: .leading)
                   Image(systemName: "chevron.right")
                     .foregroundColor(Color.black)
                 }
                 .padding(.horizontal, 30)
                 .padding(.vertical, 10)
                 .background(Color(hex: "CDD7B6"))
                 .mask(RoundedRectangle(cornerRadius: 20))
                 .shadow(radius: 5)
               }
               .padding()
             }
             .padding()
           }
         }
       }

        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Color {
  init(hex: String) {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int: UInt64 = 0
    Scanner(string: hex).scanHexInt64(&int)
    let a, r, g, b: UInt64
    switch hex.count {
    case 3: // RGB (12-bit)
      (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
    case 6: // RGB (24-bit)
      (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
    case 8: // ARGB (32-bit)
      (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
    default:
      (a, r, g, b) = (1, 1, 1, 0)
    }
    self.init(
      .sRGB,
      red: Double(r) / 255,
      green: Double(g) / 255,
      blue: Double(b) / 255,
      opacity: Double(a) / 255
    )
  }
}









