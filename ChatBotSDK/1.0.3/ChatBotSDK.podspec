Pod::Spec.new do |s|
  s.name             = 'ChatBotSDK'
  s.version          = '1.0.3'
  s.summary          = 'WotNot ChatBot SDK for iOS'
  s.description      = 'A comprehensive iOS SDK for integrating WotNot chatbot functionality into your iOS applications.'
  s.homepage         = 'https://github.com/wotnotbot/chatbot-sdk'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'WotNot' => 'support@wotnot.io' }
  s.source = { :git => 'https://github.com/wotnotbot/chatbot-sdk.git', :tag => '1.0.3' }

  s.ios.deployment_target = '15.0'
  s.swift_versions        = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7', '5.8', '5.9']

  # Source files (for testing - will be replaced with frameworks later)
  s.source_files = 'ios/WotNotSDK-Framework/ChatBotSDK/ChatBotSDK/**/*.{swift}'
  
  # Resources
  s.resources = 'ios/WotNotSDK-Framework/ChatBotSDK/ChatBotSDK/Assets.xcassets/**/*'

  # Frameworks
  s.frameworks = 'Foundation', 'UIKit', 'SwiftUI', 'Combine', 'AVFoundation'
  
  # Dependencies
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
  s.dependency 'Starscream', '~> 4.0'
end