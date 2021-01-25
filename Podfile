platform :ios, '13.0'
inhibit_all_warnings!
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end

target 'Chatting' do
  use_frameworks!
  
  # Architecture
  pod 'ReactorKit'
  pod 'Resolver'
  
  # UI
  pod 'Kingfisher'
  pod 'SnapKit'
  pod 'KMNavigationBarTransition'
  pod 'UIWindowTransitions'
  
  # Firebase
  pod 'RxFirebase/Database'
  pod 'RxFirebase/Auth'

  # Rx
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxDataSources'
  pod 'RxViewController'
  pod 'RxKeyboard'
  pod 'RxAnimated'
  pod 'RxCodable'
  
  # Etc
  pod 'KeychainAccess'
  pod 'Then'
  pod 'CGFloatLiteral'
  
  # Pods for Chatting

  target 'ChattingTests' do
    inherit! :search_paths
    
    # Test
    pod 'Quick'
    pod 'Nimble'
    pod 'RxBlocking'
    pod 'RxTest'
    
    # Pods for testing
  end
end
