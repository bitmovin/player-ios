//
// Bitmovin Player iOS SDK
// Copyright (C) 2023, Bitmovin GmbH, All Rights Reserved
//
// This source code and its use and distribution, is subject to the terms
// and conditions of the applicable license agreement.
//

import BitmovinPlayerCore
import BitmovinPlayerCollector
import CoreCollector

public protocol AnalyticsModule: _PlayerModule {
    func getCustomData() -> CustomData?
}

internal class DefaultAnalyticsModule: NSObject {
    private weak var player: Player?
    private var collector: BitmovinPlayerCollector?

    required init(player: Player) {
        self.player = player

        super.init()
    }

    func setupAnalytics(analyticsConfig: BitmovinAnalyticsConfig) {
        guard let player = player else {
            return
        }

        let collector = BitmovinPlayerCollector(config: analyticsConfig)
        collector.attachPlayer(player: player)

        self.collector = collector
    }
}

extension DefaultAnalyticsModule: AnalyticsModule {
    public func getCustomData() -> CustomData? {
        collector?.getCustomData()
    }
}
