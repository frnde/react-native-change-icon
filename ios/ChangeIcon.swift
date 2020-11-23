@objc(ChangeIcon)
class ChangeIcon: NSObject {

    @available(iOS 10.3, *)
    @objc(changeIcon:disableIcon:withResolver:withRejecter:)
    func changeIcon(iconName: String, disableIcon: String, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) -> Void {
        DispatchQueue.main.async {
            if !UIApplication.shared.supportsAlternateIcons {
                reject("Error", "Alternate icon not supported", nil)
                return
            }
            let currentIcon = UIApplication.shared.alternateIconName
            if iconName == currentIcon {
                reject("Error", "Icon already in use", nil)
                return
            }
            resolve(true)
            UIApplication.shared.setAlternateIconName(iconName)
        }
    }
}
