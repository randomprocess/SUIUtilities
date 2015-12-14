
Pod::Spec.new do |s|

  s.name         = 'SUIUtilities'
  s.version      = '1.0.3'
  s.platform     = :ios, '7.0'
  s.summary      = 'A collection of useful Objective-C utilities.'

  s.license      = 'MIT'
  s.homepage     = 'https://github.com/randomprocess/SUIUtilities'
  s.author       = { 'suio~' => 'randomprocess@qq.com' }
  s.source       = { :git => 'https://github.com/randomprocess/SUIUtilities.git',
                     :tag => s.version.to_s }

  s.requires_arc = true

  s.public_header_files = 'SUIUtilities/*.h'
  s.source_files  = 'SUIUtilities/*.{h,m}'


  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

end
