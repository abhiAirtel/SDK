

Pod::Spec.new do |spec|

spec.name         = "RepFramework"
spec.version      = "0.0.2"
spec.summary      = "A super framework is RepFramework."
spec.description  = ' Super duperrrr sample for framework added in your presence'
spec.homepage     = "https://github.com/abhiAirtel/SDK"
spec.license      = "MIT"
spec.author             = { "abhishek" => "abhishek.kumar+wynk@wynk.in" }
spec.platform     = :ios, "13.0"
spec.source       = { :git => "https://github.com/abhiAirtel/SDK.git", :tag => "v#{spec.version}" }
spec.source_files  = "RepFramework/**/*.{h,swift}"

spec.swift_versions = '5.0'

end
