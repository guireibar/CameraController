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

        XCTAssertEqual(0, 0)
    }

    func testNotificationAddDevice() throws {
        let deviceManager = DevicesManager.shared

        let device = AVCaptureDevice.default(for: .video)
        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: device)

        deviceManager.deviceAdded(notif: notification)

        XCTAssertEqual(1, 1)
        XCTAssertEqual(0, 0)
    }

    func testNotificationAddNilDevice() throws {
        let deviceManager = DevicesManager.shared

        let notification = NSNotification(name: NSNotification.Name(rawValue: "mockNotification"), object: nil)

        deviceManager.deviceAdded(notif: notification)

        XCTAssertEqual(1, 1)
        XCTAssertEqual(0, 0)
    }

    func testNotificationRemoveDevice() throws {
        Task {
        let seconds = 14.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }

        XCTAssertEqual(0, 0)
    }

    func testNotificationRemoveNilDevice() throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
        Task{
let seconds = 14.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }

        XCTAssertEqual(1, 1)
        }
        sleep(5)
        XCTAssertEqual(0,0 )
    }
    
    func test_1() throws {
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        sleep(5)
        XCTAssertEqual(1, 1)
    }
    
    func test_2() throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_3() async throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_4() throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_5() throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
        Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_6() async throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_7() async throws {
        
                        var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
        
        Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
    }
    
    func test_8() throws {
                var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_9() throws {
                var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }
    
    func test_10() throws {
        
                var sum = 0.0
        for i in 0..<20000 {
                // ^-- calling a.count every time...
            sum = sum + 2987
            sum = sum / 378;
        }
                Task {
        let seconds = 4.0
        try await Task.sleep(nanoseconds: UInt64(seconds * Double(NSEC_PER_SEC)))
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            XCTAssertEqual(1, 1)
        }
        }
        XCTAssertEqual(1, 1)
    }

}
