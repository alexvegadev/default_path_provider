#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint default_path_provider.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'default_path_provider'
  s.version          = '0.0.1'
  s.summary          = 'A plugin that provide path to the default android directories like Downloads, Pictures, etc.'
  s.description      = <<-DESC
A plugin that provide path to the default android directories like Downloads, Pictures, etc.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
