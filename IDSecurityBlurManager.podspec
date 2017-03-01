#
# Be sure to run `pod lib lint IDSecurityBlurManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDSecurityBlurManager'
  s.version          = '0.1.0'
  s.summary          = 'Independent Security blur manager'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A solution to blur application window at App Switcher'

  s.homepage         = 'https://BronnikovAndrey@github.com/BronnikovAndrey/IDSecurityBlurManager'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BronnikovAndrey' => 'bronnikov@improveitgroup.com' }
  s.source           = { :git => 'https://BronnikovAndrey@github.com/BronnikovAndrey/IDSecurityBlurManager.git', :tag => '0.1.0' }

  s.ios.deployment_target = '8.0'
  s.source_files = 'IDSecurityBlurManager/Classes/**/*'

end
