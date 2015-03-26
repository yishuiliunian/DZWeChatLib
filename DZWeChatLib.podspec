#
# Be sure to run `pod lib lint DZWeChatLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DZWeChatLib"
  s.version          = "1.5.0"
  s.summary          = "DZWeChatLib微信的静态库管理"
  s.description      = <<-DESC
                    DZWeChatLib微信的静态库管理， 会实时跟进
                       DESC
  s.homepage         = "https://github.com/yishuiliunian/DZWeChatLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "stonedong" => "yishuiliunian@gmail.com" }
  s.source           = { :git => "https://github.com/yishuiliunian/DZWeChatLib.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*', 'Pod/Wechat/**/*.{h,m}'
  s.resource_bundles = {
    'DZWeChatLib' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.libraries = "z", "sqlite3"
  s.frameworks = "CoreTelephony", "CoreGraphics","SystemConfiguration"
  s.vendored_libraries = 'Pod/Wechat/**/*.{a}'
  # s.dependency 'AFNetworking', '~> 2.3'
end
