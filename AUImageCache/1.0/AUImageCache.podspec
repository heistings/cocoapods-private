Pod::Spec.new do |spec|
  spec.name         = "AUImageCache"
  spec.version      = "1.0"
  spec.summary      = "Cache fetching & loading library, supports disc and memory."
  spec.homepage     = "http://appunite.com/"
  spec.license      = 'Apache 2.0'
  spec.author       = { "emil.wojtaszek" => "emil@appunite.com", "natalia.osiecka" => "natalia.osa@appunite.com" }
  spec.source       = { :git => 'https://review.appunite.com/AUImageCache.git', :commit => '87d9e7f'}
  spec.requires_arc = true
  spec.ios.deployment_target = '6.0'
  #spec.source      = { :git => "http://EXAMPLE/AUKit.git", :tag => "0.0.1" }
  
  spec.frameworks   = ['Foundation', 'UIKit', 'MobileCoreServices', 'CommonCrypto', 'QuartzCore', 'ImageIO', 'CoreGraphics', 'Security', 'SystemConfiguration']
  
  spec.subspec 'Core' do |ss|
    ss.platform     = :ios
    ss.source_files = 'AUImageCache/AUImageCache/*.{h,m}', 'Classes'

    ss.dependency 'AFNetworking', '> 2.1'
    ss.dependency 'libwebp'
    ss.dependency 'uiimage-from-animated-gif', '~> 1.0.1'
  end
end
