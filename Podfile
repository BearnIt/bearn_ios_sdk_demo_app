source 'https://github.com/BearnIt/bearn_ios_sdk_podrepo'
source 'https://git-codecommit.ap-southeast-1.amazonaws.com/v1/repos/myfiziq-sdk-podrepo'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.4'

use_frameworks!
inhibit_all_warnings!

target 'DemoBearnSDK' do
  pod 'BearnSDK'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 13.4
         config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.4'
      end
    end
  end
end