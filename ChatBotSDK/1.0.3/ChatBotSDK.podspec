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
  
    s.source = { :git => 'https://github.com/wotnotbot/chatbot-sdk.git', :tag => '1.0.3' }
  
    s.ios.deployment_target = '15.0'
  
    # Vendored frameworks
    s.vendored_frameworks = 'releases/ChatBotSDK.xcframework'
  
    # Frameworks
    s.frameworks = 'UIKit', 'SwiftUI', 'Foundation', 'Combine', 'AVFoundation'
  
    # Dependencies
    s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
    s.dependency 'Starscream', '~> 4.0'
  
    # Documentation & social
    s.documentation_url = 'https://docs.wotnot.io/ios-sdk'
    s.social_media_url = 'https://twitter.com/wotnot_io'
  end
  