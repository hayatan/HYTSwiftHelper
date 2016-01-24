#
# Be sure to run `pod lib lint HYTSwiftHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HYTSwiftHelper"
  s.version          = "0.1.0"
  s.summary          = "Helper class or methods for Swift"

  s.description      = <<-DESC
Helper class or methods for Swift
                        DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/HYTSwiftHelper"
  s.license          = 'MIT'
  s.author           = "hayatan"
  s.source           = { :git => "https://github.com/hayatan/HYTSwiftHelper.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.subspec 'Array' do |a|
    a.source_files = 'Pod/Classes/Array/**/*'
  end

  s.subspec 'Dictionary' do |a|
    a.source_files = 'Pod/Classes/Dictionary/**/*'
  end

end
