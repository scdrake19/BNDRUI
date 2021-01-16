//
//  Testview.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct Testview: View {
    @State var tester: String = ""
    var body: some View {
        TextField("Test", text: $tester)
    }
}

struct Testview_Previews: PreviewProvider {
    static var previews: some View {
        Testview()

        
    }
}
