Pod::Spec.new do |s|
  s.name         = "XJButton"
  s.version      = "0.0.2"
  s.summary      = "创建button时初始化图片在左或上"
  s.description  = <<-DESC

创建button时初始化图片在左或上,易扩展
                   DESC

  s.homepage     = "https://github.com/liaohengjie/XJButton"
  s.license      = "MIT"
  s.author             = { "廖幸杰" => "584566770@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/liaohengjie/XJButton.git", :tag => s.version }
  s.source_files  = "XJButton/XJButton/**/*.{h,m}"
  s.resources = "XJButton/XJButton/*.png"
  s.requires_arc = true

end
