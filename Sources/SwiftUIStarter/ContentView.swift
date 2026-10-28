import SwiftUI
import ThinkingOrbs
import Minted
import ClayGlobe

struct ContentView: View {
    @StateObject private var globe = GlobeManager(visited: ["USA", "FRA", "JPN"])

    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                // ThinkingOrbs: a status label and a standalone orb, exactly
                // as shown in the ThinkingOrbs README quick start.
                VStack(spacing: 12) {
                    ThinkingOrbLabel("Searching the web…", design: .searching)
                    ThinkingOrb(.working)
                    Text("Composing a reply…")
                        .thinkingShimmer()
                }

                // Minted: a coin minted from a SwiftUI Path, shown in the
                // spinning coin view from the Minted README.
                SpinningCoinView(
                    design: CoinDesign(art: Path(ellipseIn: CGRect(x: 0, y: 0, width: 1, height: 1)))
                )
                .frame(width: 200, height: 200)

                // ClayGlobe: the living globe from the ClayGlobe README
                // quick start, with flags for the visited countries above.
                VStack(spacing: 12) {
                    ZStack {
                        GlobeNightSky()
                        ClayGlobeView(manager: globe)
                            .overlay { GlobeCelebration(manager: globe) }
                    }
                    .frame(height: 300)

                    Picker("Style", selection: $globe.style) {
                        ForEach(GlobeStyle.allCases) { Text($0.displayName).tag($0) }
                    }
                    .pickerStyle(.segmented)

                    Button("Plant Brazil") {
                        globe.plant("BRA")
                    }
                    .buttonStyle(.bordered)
                }
            }
            .padding()
        }
    }
}
