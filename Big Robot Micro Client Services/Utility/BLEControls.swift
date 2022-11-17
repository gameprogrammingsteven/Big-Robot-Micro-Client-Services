//
//  BLEControls.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/17/22.
//

import Foundation
import CoreBluetooth

class BLEControls: NSObject, CBCentralManagerDelegate, ObservableObject {
   
    @Published
    var names = [NSString]()
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if (central.state == .poweredOn) {
            //look for dev.
            start()
        } else if (central.state == .resetting) {
            names.removeAll()
        }
        else {
            //BLE off on phone or other error
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        if let name = peripheral.name {
//            self.names.append(name)
        } else {
//            self.names.add(peripheral.identifier.uuidString)
        }
    }
    
    var centralManager: CBCentralManager?
    
    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: DispatchQueue.main)
    }
    
    func start() {
        centralManager?.scanForPeripherals(withServices: nil)
    }

    func stop() {
        centralManager?.stopScan()
    }
}
