//
//  GroupViewModelFactory.swift
//  homeWork_1
//
//  Created by Alexander Novikov on 03.03.2021.
//  Copyright © 2021 Марат Нургалиев. All rights reserved.
//

import Foundation
import UIKit

final class GroupViewModelFactory {
    
    func constructViewModels(from groups: [VkGroup]) -> [GroupViewModel] {
        return groups.compactMap(self.viewModel)
    }
    
    private func viewModel(from group: VkGroup) -> GroupViewModel{
        let avatar = UIImage(named: group.photo)
        let nameText = String
        let typeText = String
        let MemberText = String
       
     return GroupViewModel(avatar: avatar, nameText: nameText, typeText: typeText, memberText: MemberText)
    }
}
