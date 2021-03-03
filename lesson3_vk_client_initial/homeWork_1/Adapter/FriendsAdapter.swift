//
//  FriendsAdapter.swift
//  homeWork_1
//
//  Created by Alexander Novikov on 03.03.2021.
//  Copyright © 2021 Марат Нургалиев. All rights reserved.
//


import Foundation
import RealmSwift

final class FriendsAdapter {
    
   
    private let groupedFriends = [FriendList]()
    private let filteredGroupedFriends = [FriendList]()
    
    private var notificationTokenGroups: [String: NotificationToken] = [:]
    
    func getFriends(inFriends friends: String, then completion: @escaping ([VkFriend]) -> Void) {
        guard let realm = try? Realm()
            , let realmFriends = realm.object(ofType: AlamofireService.self, forPrimaryKey: friends)
            else { return }
        
        self.notificationTokenGroups[friends].stop()
        
        let token = realmFriends.addNotificationBlock { [weak self] (changes: AlamofireService) in
            guard let self = self else { return }
            switch changes {
            case .update(let realmFreinds, _, _, _):
                var friends: [Friends] = []
                for realmFriend in realmFriends {
                    friends.append(self.friend(from: realmFriends))
                }
                self.notificationTokenGroups[friends]?.stop()
                completion(friends)
            case .error(let error):
                fatalError("\(error)")
            case .initial:
                break
            }
        }
        self.realmNotificationTokens[friends] = token
        
        groupedFriends.getFriends(VkApiFriendsDelegate)
    }
}
