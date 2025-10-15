Pod::Spec.new do |s|
    s.name             = 'ChatBotSDK'
    s.version          = '1.0.3'
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
  
    s.homepage         = 'https://github.com/wotnotbot/chatbot-sdk'
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { 'WotNot Team' => 'support@wotnot.io' }
  
    # Use development branch
    s.source = { :git => 'https://github.com/wotnotbot/chatbot-sdk.git', :tag => '1.0.3' }
  
    s.ios.deployment_target = '15.0'
    s.swift_versions        = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7', '5.8', '5.9']
  
    # Use pre-built frameworks for security (source code not visible to clients)
    s.vendored_frameworks = [
      'ios/WotNotSDK-Framework/Frameworks/ios-arm64.framework',
      'ios/WotNotSDK-Framework/Frameworks/ios-arm64-simulator.framework',
      'ios/WotNotSDK-Framework/Frameworks/ios-x86_64-simulator.framework'
    ]
  
    # Resources (only assets, no source code)
    s.resources = 'ios/WotNotSDK-Framework/ChatBotSDK/ChatBotSDK/Assets.xcassets'
  
    # Frameworks
    s.frameworks = 'UIKit', 'SwiftUI', 'Foundation', 'Combine', 'AVFoundation'
  
    # Dependencies
    s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
    s.dependency 'Starscream', '~> 4.0'
  
    # No need to exclude files since we're using pre-built frameworks
  
    # Pod validation settings
    s.pod_target_xcconfig = {
      'SWIFT_VERSION' => '5.0',
      'IPHONEOS_DEPLOYMENT_TARGET' => '15.0'
    }
  
    # Documentation
    s.documentation_url = 'https://docs.wotnot.io/ios-sdk'
  
    # Social media links
    s.social_media_url = 'https://twitter.com/wotnot_io'
  end
