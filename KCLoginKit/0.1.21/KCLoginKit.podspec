
Pod::Spec.new do |s|
  s.name             = "KCLoginKit"
  s.version          = "0.1.21"
  s.summary          = "A short description of KCLoginKit."
  s.license          = 'MIT'
  s.author           = { "Emil Wojtaszek" => "emil@appunite.com" }
  s.source           = { :git => "git@git.appunite.com:newmedia/kingschat-login-ios.git", :tag => s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.source_files     = 'KCLoginKit/Classes/*.{h,m}'
  s.resources        = 'KCLoginKit/Resources/*.*'
  s.homepage         = 'https://www.appunite.com'
  
  # KingsChat
  s.dependency 'KCUserKit'
  s.dependency 'KCCountriesKit'
  s.dependency 'KCEnvironmentKit'
  
  # UI Helpers
  s.dependency 'KINWebBrowser', '~> 1.3'
  s.dependency 'KVNProgress', '~> 2.2'

  # Others
  s.dependency 'AUMediaNormalizer'

end