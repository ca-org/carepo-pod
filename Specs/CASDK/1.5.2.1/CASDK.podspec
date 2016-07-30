#
# Be sure to run `pod lib lint CASDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'CASDK'
  s.version          = '1.5.2.1'
  s.summary          = 'crazyant sdk.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
平台SDK。提供用户模块，以及基础功能的封装。
                       DESC

  s.homepage         = 'http://crazyant.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Copyright', :text => 'Copyright © 2016 Crazyant Games. All Rights Reserved.' }
  s.author           = { 'CrazyAnt' => 'support@crazyant.com' }
  s.source           = { :git => 'git@192.168.1.51:Groot/CASDK-Pods.git', :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.1'

  casdk_dir = 'CASDK1.5.2.1'
  pod_name = 'CASDK'

s.source_files =
"#{casdk_dir}/*.h"

s.resources =
"#{casdk_dir}/CASDK.bundle"


  s.subspec 'Core' do |ss|

    ss.source_files =
    "#{casdk_dir}/UMessage_Sdk_1.3.0/*.h",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/Header/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Wechat/*.h",
    "#{casdk_dir}/CAWXYUpload1.1.3.3/*.h",

    ss.public_header_files =
    "#{casdk_dir}/UMessage_Sdk_1.3.0/*.h",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/Header/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/*.h",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Wechat/*.h",
    "#{casdk_dir}/CAWXYUpload1.1.3.3/*.h"

    ss.resources = 
    "#{casdk_dir}/SVProgressHUD.bundle",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/{en,zh-Hans}.lproj",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/SocialSDKXib/*.xib",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/UMSocialSDKResourcesNew.bundle",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/WeiboSDK.bundle",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/TencentOpenApi_IOS_Bundle.bundle"

    ss.preserve_paths =
    "#{casdk_dir}/libCASDK.a",
    "#{casdk_dir}/libcrypto.a",
    "#{casdk_dir}/libssl.a",
    "#{casdk_dir}/UMessage_Sdk_1.3.0/libUMessage_Sdk_1.3.0.a",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/libUMSocial_Sdk_5.2.1.a",
    "#{casdk_dir}/UMSocial_Sdk_5.2.1/libUMSocial_Sdk_Comment_5.2.1.a",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/FBSDKCoreKit.framework",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/FBSDKLoginKit.framework",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/libSocialSinaSSO.a",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/libWeiboSDK.a",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/libSocialQQ.a",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/TencentOpenAPI.framework",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Wechat/libSocialWechat.a",
    "#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Wechat/libWeChatSDK.a",
    "#{casdk_dir}/CAWXYUpload1.1.3.3/libTXYUploader.a"

    ss.libraries =
    "z",
    "sqlite3",
    "stdc++",
    "iconv",
    "CASDK",
    "crypto",
    "ssl",
    "UMessage_Sdk_1.3.0",
    "UMSocial_Sdk_5.2.1",
    "UMSocial_Sdk_Comment_5.2.1",
    "SocialSinaSSO",
    "WeiboSDK",
    "SocialQQ",
    "SocialWechat",
    "WeChatSDK",
    "stdc++.6",
    "TXYUploader"

    ss.xcconfig = {
    "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/#{pod_name}/#{casdk_dir}/** $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMessage_Sdk_1.3.0/ $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_5.2.1/** $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/  $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/SinaSSO/** $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/ $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Wechat/** $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/CAWXYUpload1.1.3.3/",

    "FRAMEWORK_SEARCH_PATHS" => "$(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/ $(PODS_ROOT)/#{pod_name}/#{casdk_dir}/UMSocial_Sdk_Extra_Frameworks/Facebook/"
    }

    ss.frameworks =
    "SystemConfiguration",
    "UIKit",
    "Security",
    "CoreTelephony",
    "CoreGraphics",
    "MapKit",
    "ImageIO",
    "AdSupport",
    "CoreLocation",
    "AudioToolbox",
    "FBSDKCoreKit",
    "FBSDKLoginKit",
    "TencentOpenAPI",
    "Social",
    "Accounts"

  end

end
