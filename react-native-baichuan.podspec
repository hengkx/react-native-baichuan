require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.description   = package['description']
  s.homepage      = package['homepage']
  s.license       = package['license']
  s.author        = package['author']
  s.platform      = :ios, "9.0"
  s.source        = { :git => "https://github.com/hengkx/react-native-baichuan.git", :tag => "master" }
  s.source_files  = "ios/BCBridge.{h,m}", "ios/BCWebManager.{h,m}", "ios/BCWebView.{h,m}", "ios/RNReactNativeMbaichuan.{h,m}"
  s.requires_arc  = true
  s.resources = "ios/mtopsdk_configuration.plist"
  s.frameworks = "CoreTelephony", "CoreMotion"
  s.libraries = "sqlite3", "c++", "z"

  s.dependency "React"

  s.dependency "AlibcTradeSDK","4.0.1.6"
  s.dependency "AliAuthSDK","1.1.0.41-bc"
  s.dependency "mtopSDK","3.0.0.3-BC"
  s.dependency "securityGuard","5.4.191"
  s.dependency "AliLinkPartnerSDK","4.0.0.24"
  s.dependency "BCUserTrack","5.2.0.16-appkeys"
  s.dependency "UTDID","1.1.0.16"
  s.dependency "WindVane","8.5.0.46-bc11"

end
