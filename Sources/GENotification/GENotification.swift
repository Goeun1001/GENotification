import UserNotifications

#if os(iOS) || os(OSX)

public class GENotification: NSObject {
    public static let shared = GENotification()
    
    private override init() {
        super.init()
        UNUserNotificationCenter.current().delegate = self
    }
    
    public func sendNotification(alertTitle: String, alertBody: String, afterSecond: Double) {
        let content = UNMutableNotificationContent()
        
        content.title = alertTitle
        content.body = alertBody
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: afterSecond, repeats: false)
        let request = UNNotificationRequest(identifier: "GENotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    public func sendNotification(alertTitle: String, alertBody: String, afterSecond: Float) {
        let content = UNMutableNotificationContent()
        
        content.title = alertTitle
        content.body = alertBody
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(afterSecond), repeats: false)
        let request = UNNotificationRequest(identifier: "GENotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    public func sendNotification(alertTitle: String, alertBody: String, afterSecond: Int) {
        let content = UNMutableNotificationContent()
        
        content.title = alertTitle
        content.body = alertBody
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(afterSecond), repeats: false)
        let request = UNNotificationRequest(identifier: "GENotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    public func requestForNotification() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: { isAllowed, error in
            
        })
    }
}

extension GENotification: UNUserNotificationCenterDelegate {
    public func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
    
    public func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {

        // deep link처리 시 아래 url값 가지고 처리
//        let url = response.notification.request.content.userInfo

        completionHandler()
    }
}

#endif
