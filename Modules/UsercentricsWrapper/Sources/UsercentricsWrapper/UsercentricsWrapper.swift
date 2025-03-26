import Foundation
import Usercentrics
import UsercentricsUI

public final class UsercentricsWrapper {
    public static func initialize() {
        let options = UsercentricsOptions(settingsId: UUID().uuidString)
        options.consentMediation = false
        options.loggerLevel = .error
        UsercentricsCore.configure(options: options)
    }

    public static func showFirstLayerBanner(completion: @escaping () -> Void) {
        let banner = UsercentricsBanner()
        banner.showFirstLayer { _ in
            completion()
        }
    }
}
