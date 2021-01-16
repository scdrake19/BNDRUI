//
//  OptionsView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

struct OptionsView: View {
    @State private var add: String = ""
    var body: some View {
        Button(action:
                {
                    Text(add + "extra")
                }
        ) {
            Text("yo")
            TextField("here", text: $add)
        }
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
