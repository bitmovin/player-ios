//
// Bitmovin Player iOS SDK
// Copyright (C) 2023, Bitmovin GmbH, All Rights Reserved
//
// This source code and its use and distribution, is subject to the terms
// and conditions of the applicable license agreement.
//

import BitmovinPlayerCore
import CoreCollector

public extension PlayerFactory {
    static func create(
        playerConfig: PlayerConfig = PlayerConfig(),
        analyticsConfig: BitmovinAnalyticsConfig
    ) -> Player {
        PlayerFactory._registerModule(DefaultAnalyticsModule.self)

        let player = PlayerFactory.create(playerConfig: playerConfig)
        (player.analytics as? DefaultAnalyticsModule)?.setupAnalytics(analyticsConfig: analyticsConfig)

        return player
    }
}
