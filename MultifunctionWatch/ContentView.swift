import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ClockViewModel() // ViewModelを注入
    
    var body: some View {
        ZStack{
            let SelectColor = Color.blue
            SelectColor.ignoresSafeArea()
            VStack {
                Text(viewModel.timeString) // ViewModelから時刻を取得
                                .font(.system(size: 256))
            }
            .onAppear {
                // 必要であれば初期化処理
            }
        }
    }
}
