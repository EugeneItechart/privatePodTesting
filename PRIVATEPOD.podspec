# frozen_string_literal: true

#
#  Be sure to run `pod spec lint Tokenization.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'PRIVATEPOD'
  s.version          = '0.0.1'
  s.summary          = 'WCOOK DEscpritpsdofgjsgj s kg;sdlfgj lksdfjg sjg dfs;lk jglk'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
Oipoipo pi pi pi poi poppy pi popo po cpiopi po top imo op iopiopi op opipoi p
                       DESC

  s.homepage         = 'https://github.com/EugeneItechart/privatePodTesting'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EugeneItechArt' => 'yevgeni.bessilko@itechart-group.com' }
  s.source           = { :git => 'https://github.com/EugeneItechArt/PRIVATEPOD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.2'
  #s.ios.deployment_target = '11.0'
  #s.platform = :ios, '11.0'

  s.source_files = 'PRIVATEPOD/Classes/**/*'

  #s.resources = 'PRIVATEPOD/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}'
  # s.resource_bundle = { 'Resources' => ['PRIVATEPOD/**/*.{strings}'] }
  
  # s.resource_bundles = {
  #   'PRIVATEPOD' => ['PRIVATEPOD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.static_framework = true

  s.requires_arc = true
end
