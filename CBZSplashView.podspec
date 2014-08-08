#
# Be sure to run `pod lib lint CBZSplashView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CBZSplashView"
  s.version          = “1.0.0”
  s.summary          = "A Twitter like Splash View"
  s.description      = <<-DESC
                        A Twitter like Splash View
                        Sub in your icon and colour and boom
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/callumboddy/CBZSplashView"
  s.license          = 'MIT'
  s.author           = { "Callum Boddy" => "callum.boddy@gmail.com" }
  s.source           = { :git => "https://github.com/callumboddy/CBZSplashView.git", :tag => '0.1.1'}
  # s.social_media_url = 'https://twitter.com/callumboddy'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files  = 'Pod/Classes', '*.{h,m}'
end
