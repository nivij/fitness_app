name: "Build & Release"
on:
  pull_request:
    branches:
      - dev
      - test
  push:
    branches:
      - dev
      - test
jobs:
  build:
    name: Build & Release
    runs-on: mascos-latest


    steps:
      - name: Checkout Repository
        uses: actions/checkout@v3

      - name: Set Up Java
        uses: actions/setup-java@v3.12.0
        with:
          distribution: 'oracle'
          java-version: '17'

      - name: Set Up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.13.0'
          channel: 'stable'

      - name: Install Dependencies
        run: flutter pub get

      - name: Test flutter app
        run: flutter test

      - name: Build APK
        run: flutter build apk --release

      - name: Build appBundle
        run: flutter build appbundle

      - name: Build IPA
        run:
          flutter build ipa --no-codesign
      - name: Compress Archives and IPAs
        run: |
          cd build
          tar -czf ios_build.tar.gz ios

      - name: Upload Artifacts
        uses: actions/upload-artifact@v2
        with:
          name: Releases
          path: |
            build/app/outputs/flutter-apk/app-release.apk
            build/app/outputs/bundle/release/app-release.aab
            build/ios_build.tar.gz

      - name: Create Release
        uses: ncipollo/release-action@v1
        with:
          artifacts: "build/app/outputs/flutter-apk/app-release.apk,build/app/outputs/bundle/release/app-release.aab,build/ios_build.tar.gz"
          tag: v1.0.${{ github.run_number }}
          token: ${{ secrets.TOKEN }}