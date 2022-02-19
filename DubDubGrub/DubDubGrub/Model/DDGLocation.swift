//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/19.
//

import CloudKit

// set the ddglocation
struct DDGLocation {
    
    // key value will use various place
    // to use convenient set the value by static
    static let kName            = "name"
    static let kDescription     = "description"
    static let kSqauareAsset    = "squareAsset"
    static let kBannerAsset     = "bannerAsset"
    static let kAddress         = "address"
    static let kLocation        = "location"
    static let kWebsiteURL      = "websiteURL"
    static let kPhoneNumber     = "kPhoneNumber"
    
    let ckRecordID: CKRecord.ID // to reffrence the id
    let name: String
    let description: String
    let squareAsset: CKAsset!
    let bannerAsset: CKAsset!
    let address: String
    let location: CLLocation
    let websiteURL: String
    let phoneNumber: String
    
    // record is a dictionay so we should set the key value
    init(record: CKRecord) {
        ckRecordID  = record.recordID
        name = record[DDGLocation.kName] as? String ?? "N/A"
        description = record[DDGLocation.kDescription] as? String ?? "N/A"
        squareAsset = record[DDGLocation.kSqauareAsset] as? CKAsset
        bannerAsset = record[DDGLocation.kBannerAsset] as? CKAsset
        address = record[DDGLocation.kAddress] as? String ?? "N/A"
        location = record[DDGLocation.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        websiteURL = record[DDGLocation.kWebsiteURL] as? String ?? "N/A"
        phoneNumber = record[DDGLocation.kPhoneNumber] as? String ?? "N/A"
    }
}
