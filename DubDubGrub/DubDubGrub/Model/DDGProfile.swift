//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/19.
//

import CloudKit

struct DDGProfile {
    static let kFirstName   = "firstName"
    static let kLastName    = "lastName"
    static let kAvatar      = "avatar"
    static let kCompanyName = "companyName"
    static let kIsCheckedin = "isCheckedIn"
    static let bio          = "bio"

    let ckRecordID: CKRecord.ID
    let firstName: String
    let lastName: String
    let avatar: CKAsset!
    let companyName: String
    // to reference DDGLocation exist or not
    // and if not will assing nil
    let isCeckedIn: CKRecord.Reference? = nil
    let bio: String

    
    init(record: CKRecord) {
        ckRecordID  = record.recordID
        firstName   = record[DDGProfile.kFirstName] as? String ?? "N/A"
        lastName    = record[DDGProfile.kLastName] as? String ?? "N/A"
        avatar      = record[DDGProfile.kAvatar] as? CKAsset
        companyName = record[DDGProfile.kCompanyName] as? String ?? "N/A"
        bio         = record[DDGProfile.bio] as? String ?? "N/A"
    }
}
