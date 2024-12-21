import Foundation // Model は SwiftUI をインポートしない

class ClockModel {
    func getCurrentTime() -> Date {
            return Date()
        }
    func getTimeString(from date: Date) -> String {
            let calendar = Calendar.current
            let month = calendar.component(.month,from: date)
            let day = calendar.component(.day,from: date)
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute,from: date)
            let second = calendar.component(.second,from: date)
        return String(format: "%02d-%02d %02d:%02d:%02d", month, day, hour, minute, second)
        }
}
