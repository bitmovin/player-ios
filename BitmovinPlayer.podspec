Pod::Spec.new do |s|
  s.name             = 'BitmovinPlayer'
  s.version          = '3.38.1-a.1'
  s.summary          = 'Bitmovin Player SDK release build for iOS and tvOS'

  s.homepage         = 'https://www.bitmovin.com/'
  s.author           = { 'Bitmovin Inc' => 'admin@bitmovin.com' }

  s.source           = { :git => 'https://github.com/bitmovin/player-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.tvos.deployment_target = '14.0'

  s.subspec 'BitmovinPlayer' do |ss|
    ss.source_files = 'Sources/BitmovinPlayer/**/*.{swift}'
    ss.dependency 'BitmovinPlayer/AnalyticsModule'
  end

  s.subspec 'AnalyticsModule' do |ss|
    ss.source_files = 'Sources/AnalyticsModule/**/*.{swift}'
    ss.dependency 'BitmovinAnalyticsCollector/Core', '~> 2.10.0'
    ss.dependency 'BitmovinAnalyticsCollector/BitmovinPlayer', '~> 2.10.0'
    ss.dependency 'BitmovinPlayerCore', '~> 3.38.1-a.1'
  end
end
