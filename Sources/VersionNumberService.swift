/*
 |  _   ____   ____   _
 | ⎛ |‾|  ⚈ |-| ⚈  |‾| ⎞
 | ⎝ |  ‾‾‾‾| |‾‾‾‾  | ⎠
 |  ‾        ‾        ‾
 */

import Foundation

public struct VersionNumberService {
    
    // MARK: - Public properties
    
    public var currentVersionShort: String {
        guard let shortVersion = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String else { return "Unknown" }
        return shortVersion
    }
    
    public var currentVersion: String {
        guard let version = NSBundle.mainBundle().infoDictionary?["CFBundleVersion"] as? String else { return "Unknown" }
        return version
    }
    
    public var appNameWithVersion: String {
        guard let appName = NSBundle.mainBundle().infoDictionary?["CFBundleName"] as? String else { return "Unnamed App" }
        return "\(appName) version \(currentVersion) (\(currentVersionShort))"
    }
    
    
    // MARK: - Initializers
    
    public init() { }
    
}
