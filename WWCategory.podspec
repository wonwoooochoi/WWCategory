@version = "0.7.0"
Pod::Spec.new do |s|
  s.name         = "WWCategory"
  s.version      = @version
  s.summary      = "The iOS development simple and useful category."
  s.homepage     = "https://github.com/wonwoooochoi/WWCategory.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Won Woo Choi" => "wonwoooochoi@gmail.com" }
  s.source       = { :git => "https://github.com/wonwoooochoi/WWCategory.git", :tag => @version }
  s.public_header_files = 'Category/WWCategory.h'
  s.source_files = 'Category/**/*.{h,m}'
  s.framework  = 'UIKit', 'Foundation', 'CoreGraphics', 'CommonCrypto', 'AssetsLibrary'
  s.requires_arc = true
  s.ios.deployment_target = '4.0'
end
