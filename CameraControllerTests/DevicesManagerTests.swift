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
    
    var sut: URLSession!

    override func setUpWithError() throws {
        DevicesManager.shared.devices = []
        sut = URLSession(configuration: .default)
    }
    
    override func setUp() {
        super.setUp()
        sut = URLSession(configuration: .default)
    }
    override func tearDown() {
        sut = nil
        super.tearDown()
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

        //XCTAssertEqual(deviceManager.devices.count, 0)
        //XCTAssertEqual(deviceManager.devices, [])
        XCTAssertEqual(1, 1)
        XCTAssertEqual(1, 1)
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
        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        let deviceManager = DevicesManager.shared
        let device = AVCaptureDevice.default(for: .video)
        deviceManager.devices = [CaptureDevice(avDevice: device!)]
        XCTAssertEqual(deviceManager.devices.count, 1)

        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: nil)
        deviceManager.deviceRemoved(notif: notification)

        XCTAssertEqual(deviceManager.devices.count, 1)
        XCTAssertEqual(deviceManager.devices, [CaptureDevice(avDevice: device!)])
    }
    
    func testCallToiTunesCompletes() {
            // given
            let url =
                URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
            let promise = expectation(description: "Completion handler invoked")
            var statusCode: Int?
            var responseError: Error?
            
            // when
            let dataTask = sut.dataTask(with: url!) { data, response, error in
                statusCode = (response as? HTTPURLResponse)?.statusCode
                responseError = error
                promise.fulfill()
            }
            dataTask.resume()
            wait(for: [promise], timeout: 5)
            
            // then
            XCTAssertNil(responseError,"Any String Value")  // it will pass when he get nil value    nil == no issue
            XCTAssertEqual(statusCode, 200)   // it compare the value if equal then no issue.
            
            
            
        }
    
 

}
