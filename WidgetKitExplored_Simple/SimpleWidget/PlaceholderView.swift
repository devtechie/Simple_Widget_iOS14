///**
/**

SimpleWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        Text("placeholder").redacted(reason: .placeholder)
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}
