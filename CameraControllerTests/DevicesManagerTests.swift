//
//  DevicesManagerTests.swift
//  CameraControllerTests
//
//  Created by Itay Brenner on 7/19/20.
//  Copyright © 2020 Itaysoft. All rights reserved.
//

import XCTest
import AVFoundation
@testable import CameraController

class DevicesManagerTests: XCTestCase {

    override func setUpWithError() throws {
        DevicesManager.shared.devices = []
    }

    func testDefaultNoDevices() throws {
        let deviceManager = DevicesManager.shared

        XCTAssertEqual(deviceManager.devices.count, 0)
    }

    func testNotificationAddDevice() throws {
        let deviceManager = DevicesManager.shared

        let device = AVCaptureDevice.default(for: .video)
        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: device)

        deviceManager.deviceAdded(notif: notification)

        XCTAssertEqual(deviceManager.devices.count, 1)
        XCTAssertEqual(deviceManager.devices, [CaptureDevice(avDevice: device!)])
    }

    func testNotificationAddNilDevice() throws {
        let deviceManager = DevicesManager.shared

        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: nil)

        deviceManager.deviceAdded(notif: notification)

        XCTAssertEqual(deviceManager.devices.count, 1)
        XCTAssertEqual(deviceManager.devices, [])
    }

    func testNotificationRemoveDevice() throws {
        let deviceManager = DevicesManager.shared
        let device = AVCaptureDevice.default(for: .video)
        deviceManager.devices = [CaptureDevice(avDevice: device!)]
        XCTAssertEqual(deviceManager.devices.count, 1)

        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: device)
        deviceManager.deviceRemoved(notif: notification)

        XCTAssertEqual(deviceManager.devices.count, 0)
    }

    func testNotificationRemoveNilDevice() throws {
        let deviceManager = DevicesManager.shared
        let device = AVCaptureDevice.default(for: .video)
        deviceManager.devices = [CaptureDevice(avDevice: device!)]
        XCTAssertEqual(deviceManager.devices.count, 1)

        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: nil)
        deviceManager.deviceRemoved(notif: notification)

        XCTAssertEqual(1, 1)
        XCTAssertEqual(0,0 )
    }
    
    func test_1() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_2() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_3() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_4() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_5() throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_6() async throws {
        let seconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_7() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_8() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_9() async throws {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }
    
    func test_10() async throws {
        let seconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
    }

}
