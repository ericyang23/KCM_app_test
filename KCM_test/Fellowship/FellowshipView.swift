//
//  FellowshipView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct CustomDivider: View {
    var color: Color = .red
    var width: CGFloat = 2
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height:width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct FellowshipView: View {
 
    var body: some View {
        VStack{
            ZStack{
                Color(hue: 0.7, saturation: 0.3, brightness:0.8)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height:60)
                Text("Post-GM Fellowship")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title2)
            }
            //CustomDivider()
            Text("This Week's Fellowship:")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("(image from VAM)")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Date: 9/15/21")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 50)
            }
            HStack(){
                Text("Signup Link:")
                Text("link1")
                Link("Sign Up Here!", destination: URL(string: "https://www.apple.com")!)
                    .foregroundColor(.red)
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Rides Spreadsheet:")
                Link("Check Your Ride!", destination: URL(string: "https://www.apple.com")!)
                    .foregroundColor(.red)
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Address:")
                Link("1234 Main St", destination: URL(string: "https://www.google.com/maps")!)
                    .foregroundColor(.blue)
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Questions? Message Kaila at")
                Spacer()
            }
            .padding([.top, .leading, .trailing])
            HStack{
                Link("123-456-7890", destination: URL(string: "imessage:1234567890")!)
                    .foregroundColor(.blue)
                Text("or")
                Link("abc@gmail.com", destination: URL(string: "mailto:abc@gmail.com")!)
                    .foregroundColor(.blue)
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct FellowshipView_Previews: PreviewProvider {
    static var previews: some View {
        FellowshipView()
    }
}

