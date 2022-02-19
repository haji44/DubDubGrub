//
//  MockData.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/19.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        // type name should be identicla the name of CloudKit console
        let record = CKRecord(recordType: RecordType.location)
        // insert the dummy data into record object
        record[DDGLocation.kName] = "Hajime teno otsukai"
        record[DDGLocation.kAddress] = "123 Main Streeet"
        record[DDGLocation.kDescription] = "This is a test description. Isn't it awsesome"
        record[DDGLocation.kWebsiteURL] = "https://github.com/haji44"
        record[DDGLocation.kLocation] = CLLocation(latitude: 37.331516,
                                                   longitude: -121.891054)
        record[DDGLocation.kPhoneNumber] = "111-1111-1111"
        return record
    }
}
