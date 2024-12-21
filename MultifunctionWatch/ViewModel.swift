import Foundation
import Combine

class ClockViewModel: ObservableObject {
    @Published var timeString: String = ""
    
    private var model = ClockModel()
    private var timer: AnyCancellable?
    
    init() {
        startClock()
    }
    
    private func startClock() {
        timer = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.updateTime()
            }
    }
    
    private func updateTime() {
        let currentTime = model.getCurrentTime()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH : mm:ss"
//        formatter.dateFormat = "YYYY:M:dd:HH:mm:ss"
        timeString = formatter.string(from: currentTime)
    }
    
    deinit {
        timer?.cancel()
    }
}
