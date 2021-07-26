#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint image_compression_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'image_compression_flutter'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter Extension to compress and resize the images.'
  s.description      = <<-DESC
A Flutter Extension to compress and resize the images.
                       DESC
  s.homepage         = 'https://github.com/eyro-labs/image_compression_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Eyro Labs' => 'admin@cubeacon.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
