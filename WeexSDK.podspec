# coding: utf-8
Pod::Spec.new do |s|

  s.name         = "WeexSDK"

  s.version      = "0.18.0"

  s.summary      = "WeexSDK Source ."

  s.description  = <<-DESC
                   A framework for building Mobile cross-platform UI
                   DESC

  s.homepage     = "https://github.com/bmfe/WeexiOSSDK"
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
           Alibaba-INC copyright
    LICENSE
  }
  s.authors      = { "cxfeng1"      => "cxfeng1@gmail.com",
                     "boboning"     => "ningli928@163.com",
                     "yangshengtao" => "yangshengtao1314@163.com",
                     "kfeagle"      => "sunjjbobo@163.com",
                     "acton393"     => "zhangxing610321@gmail.com"
                   }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/bmfe/WeexiOSSDK.git", :tag => s.version.to_s }
  s.source_files = 'WeexSDK/Sources/**/*.{h,m,mm,c}'
  s.resources = 'WeexSDK/Resources/native-bundle-main.js', 'WeexSDK/Resources/wx_load_error@3x.png'

  s.user_target_xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => "'$(PODS_ROOT)/WeexSDK'" }
  s.requires_arc = true
  s.prefix_header_file = 'WeexSDK/Sources/Supporting Files/WeexSDK-Prefix.pch'

  s.xcconfig = { "OTHER_LINK_FLAG" => '$(inherited) -ObjC'}

  s.frameworks = 'CoreMedia','MediaPlayer','AVFoundation','AVKit','JavaScriptCore', 'GLKit', 'OpenGLES', 'CoreText', 'QuartzCore', 'CoreGraphics'
  s.libraries = "stdc++"

end
