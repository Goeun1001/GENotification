import XCTest
import UserNotifications
@testable import GENotification

final class GENotificationTests: XCTestCase {
    
    func testSendNotification() throws {
        GENotification.shared.sendNotification(alertTitle: "알람", alertBody: "인디", afterSecond: 1)
        
        let expectationTemp = expectation(description: "Notification not scheduled")
        
        UNUserNotificationCenter.current().getPendingNotificationRequests(completionHandler: { (requests) in
            XCTAssertEqual(1, requests.count)
            XCTAssertEqual(requests.first!.identifier, "GECalendar")
            expectationTemp.fulfill()
            
        })
        
        waitForExpectations(timeout: 10, handler: nil)
    }
}
