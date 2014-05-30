Pod::Spec.new do |s|
  s.name                  = "evernote-cloud-sdk-ios"
  s.version               = "1.0.0"
  s.summary               = "Evernote SDK for iOS."
  s.homepage              = "https://github.com/sonsongithub/evernote-cloud-sdk-ios"
  s.license               = {:type => "BSD", :file => "LICENSE"}
  s.author                = {"Yuichi Yoshida" => "yoshida.yuichi@gmail.com"}
  s.source                = {:git => "https://github.com/sonsongithub/evernote-cloud-sdk-ios.git", :tag => "v#{s.version}"}
  s.ios.deployment_target = "7.0"
  s.xcconfig              = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  s.public_header_files   = "evernote-sdk-ios/ENSDK/SendToEvernoteActivity/SendToEvernoteActivity.h", 
  s.source_files          = "evernote-sdk-ios/**/*.{h,m}",
  s.header_mappings_dir   = "evernote-sdk-ios/",
  s.exclude_files         = "evernote-sdk-ios/evernote-sdk-ios-Prefix.pch",
  s.framework             = "QuartzCore", "CoreText", "MobileCoreServices", "Foundation", "UIKit"
  s.library               = "xml2"
  s.requires_arc          = true
end
