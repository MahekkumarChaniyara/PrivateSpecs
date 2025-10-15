Pod::Spec.new do |s|
  s.name             = 'ChatBotSDK'
  s.version          = '1.0.4'
  s.summary          = 'WotNot Chatbot SDK for iOS - Integrate AI-powered chatbots into your iOS applications'
  s.description      = <<-DESC
    WotNotChatbotSDK is a comprehensive iOS SDK that allows you to easily integrate AI-powered chatbots into your iOS applications.

    Features:
    - Real-time messaging with WebSocket support
    - File upload capabilities
    - Customizable UI themes
    - Conversation management
    - Bot preferences configuration
    - Support for multiple environments (dev, test, prod)
    - SwiftUI and UIKit compatibility

    Perfect for customer support, sales automation, and interactive user experiences.
  DESC

  s.homepage         = 'https://github.com/MahekkumarChaniyara/chatbot-sdk'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Mahekkumar Chaniyara' => 'mahekkumar.chaniyara@wotnot.io' }

  # For now, we'll use a local source until the main repo is created
  s.source = { :git => 'https://github.com/wotnotbot/chatbot-sdk.git', :tag => '1.0.4' }

  s.ios.deployment_target = '15.0'
  s.swift_versions        = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7', '5.8', '5.9']

  # Binary framework distribution
  s.vendored_frameworks = 'ios/ChatBotSDK/build/ChatBotSDK.xcframework'
  
  # Resources
  s.resources = 'ios/ChatBotSDK/ChatBotSDK/Assets.xcassets/**/*'

  # Frameworks
  s.frameworks = 'UIKit', 'SwiftUI', 'Foundation', 'Combine', 'AVFoundation'
  
  # Dependencies
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
  s.dependency 'Starscream', '~> 4.0'

  # Exclude tests and unnecessary files
  s.exclude_files = [
    'ios/ChatBotSDK/ChatBotSDKTests/**/*',
    'ios/ChatBotSDK/ChatBotSDKUITests/**/*',
    '**/*Test*.swift',
    '**/*Tests*.swift',
    'ios/ChatBotSDK/build.sh',
    'ios/ChatBotSDK/README.md'
  ]

  # Pod validation settings
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '5.0',
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.0',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }

  # User target configuration
  s.user_target_xcconfig = {
    'SWIFT_VERSION' => '5.0',
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.0'
  }

  # Documentation
  s.documentation_url = 'https://docs.wotnot.io/ios-sdk'

  # Social media links
  s.social_media_url = 'https://twitter.com/wotnot_io'
end