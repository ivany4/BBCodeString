#
# Be sure to run `pod lib lint BBCodeString.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BBCodeString"
  s.version          = "0.1.2"
  s.summary          = "BBCodeString is a simple library which enables you to create NSAttributedString object from bb code string."
  s.description      = <<-DESC

BBCodeString is a simple library which enables you to create NSAttributedString object from bb code string.

                       DESC
  s.homepage         = "https://github.com/ivany4/BBCodeString"
  s.license          = 'MIT'
  s.author           = { "Miha Rataj" => "rataj.miha@gmail.com" }
  s.source           = { :git => "https://github.com/ivany4/BBCodeString.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/miharataj'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'BBCodeString' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'BBCodeParser', '~> 0.1.2'
end
