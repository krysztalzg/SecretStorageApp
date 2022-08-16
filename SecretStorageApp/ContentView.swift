//
//  ContentView.swift
//  SecretStorageApp
//

import SwiftUI
import ArkanaKeys
import Keys

struct ContentView: View {

    private let arkanaKeys = ArkanaKeys.Global()
    private let podsKeys = SecretStorageAppKeys()

    var body: some View {
        Text(arkanaKeys.aRKANA_SECRET_KEY1)
            .padding()

        Text(arkanaKeys.aRKANA_SECRET_KEY2)
            .padding()

        Text(SecretStorageAppKeys().pODS_SECRET_KEY1)
            .padding()

        Text(SecretStorageAppKeys().pODS_SECRET_KEY2)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
