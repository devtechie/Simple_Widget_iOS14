///**
/**

SimpleWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

struct SimpleWidgetTimeline: TimelineProvider {
    typealias Entry = SimpleWidgetEntry
    
    func snapshot(with context: Context, completion: @escaping (SimpleWidgetEntry) -> ()) {
        let entry = SimpleWidgetEntry(date: Date())
        completion(entry)
    }
    
    func timeline(with context: Context, completion: @escaping (Timeline<SimpleWidgetEntry>) -> ()) {
        var entries: [SimpleWidgetEntry] = []
        let currentDate = Date()
        
        for dayOffset in 0..<7 {
            let entryDate = Calendar.current.date(byAdding: .day, value: dayOffset, to: currentDate)!
            let entry = SimpleWidgetEntry(date: entryDate)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
