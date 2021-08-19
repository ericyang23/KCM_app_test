//
//  USCKCM_logo.swift
//  KCM_test
//
//  Created by Eric Yang on 7/28/21.
//

import SwiftUI

struct USCKCM_logo: View {
    var body: some View {
        Image("kcm_logo2")
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct USCKCM_logo_Previews: PreviewProvider {
    static var previews: some View {
        USCKCM_logo()
    }
}
