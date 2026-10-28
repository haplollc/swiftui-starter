# swiftui-starter

A sample SwiftUI app that demonstrates three Haplo packages in one view:

- [ThinkingOrbs](https://github.com/haplollc/ThinkingOrbs): dotted, genuinely 3D loading indicators for AI interfaces. The view shows a `ThinkingOrbLabel` status line, a standalone `ThinkingOrb`, and shimmering text via `thinkingShimmer()`.
- [Minted](https://github.com/haplollc/Minted): turns vector art into a physically lit 3D gold medallion. The view mints a coin from a SwiftUI `Path` with `CoinDesign` and shows it in `SpinningCoinView`.
- [ClayGlobe](https://github.com/haplollc/ClayGlobe): a claymorphic 3D globe that plants a waving flag on every country you visit. The view shows `ClayGlobeView` over `GlobeNightSky`, with a style picker and a button that plants Brazil.

## Run it

Open `Package.swift` in Xcode 16 or later, pick an iPhone simulator, and build and run. The app needs iOS 17 or later. Each usage in `ContentView.swift` is copied from the corresponding package README, so the package docs are the reference if you adapt the code.

## What is in this repo

- `Package.swift`: depends on ThinkingOrbs, Minted, and ClayGlobe through Swift Package Manager.
- `Sources/SwiftUIStarter/StarterApp.swift`: the app entry point.
- `Sources/SwiftUIStarter/ContentView.swift`: one view demonstrating one usage from each package.
