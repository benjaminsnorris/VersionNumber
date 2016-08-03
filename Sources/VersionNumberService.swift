/*
 |  _   ____   ____   _
 | ⎛ |‾|  ⚈ |-| ⚈  |‾| ⎞
 | ⎝ |  ‾‾‾‾| |‾‾‾‾  | ⎠
 |  ‾        ‾        ‾
 */

import Foundation

public struct VersionNumberService {
    
    // MARK: - Public properties
    
    public var versionNumber: String {
        guard let shortVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else { return "Unknown" }
        return shortVersion
    }
    
    public var buildNumber: String {
        guard let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else { return "Unknown" }
        return version
    }
    
    public var appNameWithVersion: String {
        guard let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String else { return "Unnamed App" }
        return "\(appName) version \(versionNumber) (\(buildNumber))"
    }
    
    
    // MARK: - Initializers
    
    public init() { }
    
}
