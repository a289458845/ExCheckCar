#
# Be sure to run `pod lib lint ExCheckCar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'ExCheckCar'
s.version          = '0.1.0'
s.summary          = '查车组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
查车独立模块，包含、查车、查工地、查消纳点。地图等功能
DESC
# 主页信息网址
s.homepage         = 'https://github.com/a289458845/ExCheckCar'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Peng' => '289458845@qq.com' }
# 主页信息网址
s.source           = { :git => 'https://github.com/a289458845/ExCheckCar.git', :tag => s.version.to_s }
# 媒体文件
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
# 工程依赖系统版本
s.ios.deployment_target = '9.0'

# 源文件 包含 h,m
s.source_files = 'ExCheckCar/Classes/**/*'
s.requires_arc = true

# 资源文件 .png/.bundle等(多个)
# s.resource_bundles = {
#   'ExCheckCar' => ['ExCheckCar/Assets/*.png']
# }

# 公开头文件 打包只公开特定的头文件
# 调试公开所有的头文件 这个地方下面的头文件 如果是在Example中调试 就公开全部，需要打包就只公开特定的h文件
# s.public_header_files = 'Pod/Classes/**/*.h'

# 私有头文件
# subcfiles.private_header_files = "MyLibrary/cfiles/**/*.h"

# 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用 一运行会报错 image not found
s.static_framework  =  true
# 载入第三方.a (如paynuc.a这种)
#s.vendored_libraries = 'SOCRLib/Classes/openssl/include/*.{a}'
# 载入第三方.a头文件
#s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => 'SOCRLib/Classes/openssl/include/openssl/*.{h}' }
# 链接设置 重要
s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
# 载入第三方.a (如paynuc.a这种)


# 系统动态库(多个)
s.frameworks = 'UIKit','CoreMedia','AVFoundation','Foundation'
# 第三方开源框架(多个)
s.dependency 'AFNetworking'
#s.dependency 'AMap3DMap'
s.dependency 'Masonry'

# 第三方非开源framework(多个)
#s.vendored_frameworks = [
#                            'SOCRLib/Classes/framework/IDLFaceSDK.framework',
#                           'SOCRLib/Classes/framework/PayEgisFace.framework'
#                           ]
#s.vendored_frameworks = 'ExCheckCar/*.{framework}'

# 系统类库(多个) 注意:系统类库不需要写全名 去掉开头的lib
end
