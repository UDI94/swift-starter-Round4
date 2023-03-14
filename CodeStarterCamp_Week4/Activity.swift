//
//  Activity.swift
//  CodeStarterCamp_Week4
//
//  Created by eve on 2023/03/13.
//

import Foundation

struct Activity {
    let name: String
    let action: (BodyCondition) -> Void
    
    static func doExercise(_ condition: BodyCondition, activities: [Activity]) {
        guard activities.count > 0 else { return }

        for (index, activity) in activities.enumerated() {
            print("<<\(activity.name)을(를) 시작합니다>>")
            activity.action(condition)
            print(index == activities.count-1 ? "--------------" : "")
        }
        condition.checkBody()
    }
}
