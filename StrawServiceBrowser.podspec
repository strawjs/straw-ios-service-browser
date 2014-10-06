Pod::Spec.new do |s|

  s.name         = "StrawServiceBrowser"
  s.version      = "0.1.0"
  s.summary      = "Arbitrary URL open service for Straw iOS"

  s.description  = <<-DESC
                   Arbitrary URL open service for Straw iOS

                   This service provide the functionality to open URL with external apps (typically Safari).
                   DESC

  s.homepage     = "https://github.com/strawjs/straw-ios-service-browser"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Yoshiya Hinosawa" => "stibium121@gmail.com" }
  s.social_media_url   = "http://twitter.com/kt3k"

  s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "http://EXAMPLE/StrawServiceBrowser.git", :tag => "v0.1.0" }

  s.source_files  = "StrawServiceBrowser/**/*.{h,m}"
  s.public_header_files = "StrawServiceBrowser/**/*.h"

  s.requires_arc = true

  s.dependency "Straw", "~> 0.5.0"

end
