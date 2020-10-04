///**
/**

SimpleWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct SimpleWidgetEntryView: View {
    let entry: SimpleWidgetEntry
    
    var body: some View {
        ZStack {
            VStack (spacing: 5) {
                Text(getMonth())
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .background(Rectangle().fill(Color.red))
                Text(getDay())
                Text(getDate())
                    .font(.largeTitle)
            }
            .background(Rectangle().fill(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))))
            .padding(20)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
        }.edgesIgnoringSafeArea(.all)
    }
    
    private func getDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E"
        return dateFormatter.string(from: entry.date)
    }
    
    private func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: entry.date)
    }
    
    private func getMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: entry.date)
    }
}
