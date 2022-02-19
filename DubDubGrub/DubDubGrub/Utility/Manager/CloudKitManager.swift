//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/19.
//

import ClockKit
import CloudKit

struct CloudManager {

    static func getLocation(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        // order the property by alphabetically
        // if the descriptor failuar, acending be false
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)

        // create query that retrieve the all record from clouldkit
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        // excute the query
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            // this object will return for call
            var locations: [DDGLocation] = []
            
            for record in records {
                let location = DDGLocation(record: record)
                locations.append(location)
            }
            
            completed(.success(locations))
        }
    }
}
