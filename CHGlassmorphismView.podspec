#
# Be sure to run `pod lib lint CHGlassmorphismView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHGlassmorphismView'
  s.version          = '1.0.0'
  s.summary          = 'Assistant for Glassmorphism UI in iOS'
  
  # Set Swift version
  s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Glassmorphism is a design style using a background blur effect, which makes the view look like a floating translucent glass.
This library is an assistant of making glassmorphism UI in iOS with UIKit.
                       DESC

  s.homepage         = 'https://github.com/Chaehui-Seo/CHGlassmorphismView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chaehui-Seo' => 'sch0991@naver.com' }
  s.source           = { :git => 'https://github.com/Chaehui-Seo/CHGlassmorphismView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'Sources/CHGlassmorphismView/**/*'
  
  # s.resource_bundles = {
  #   'CHGlassmorphismView' => ['CHGlassmorphismView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
