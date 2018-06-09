#
#  Be sure to run `pod spec lint CryptoCompKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "CryptoCompKit"
  s.version      = "0.0.2"
  s.summary      = "Client library for cryptocompare.com's API"

  s.homepage     = "https://github.com/stevewight/CryptoCompKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Steve Wight" => "stevendouglaswight@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/stevewight/CryptoCompKit.git", :tag => "#{s.version}" }


  s.source_files  = "CryptoCompKit/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4" }
end
