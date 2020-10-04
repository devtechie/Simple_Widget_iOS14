///**
/**

SimpleWidget
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

@main
struct SimpleWidget: Widget {
    private let kind: String = "SimpleWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: SimpleWidgetTimeline(), placeholder: PlaceholderView()) { entry in
            SimpleWidgetEntryView(entry: entry)
        }
    }
}
