//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myBodyCondition: BodyCondition = BodyCondition(upperBodyMuscleStrength: 0, lowerBodyMuscleStrength: 0, muscularEndurance: 0, tiredness: 0)

let sitUp: Exercise = Exercise(name: "윗몸일으키기", action: {
    (bodyCondition: BodyCondition) in
    bodyCondition.changeStatusAfterSitup()
})

let squat: Exercise = Exercise(name: "스쿼트", action: { (bodyCondition: BodyCondition) in
    bodyCondition.changeStatusAfterSquat()
})

let longRunning: Exercise = Exercise(name: "오래달리기", action: { (bodyCondition: BodyCondition) in
    bodyCondition.changeStatusAfterlongRunning()
})

let activeRest: Exercise = Exercise(name: "동적휴식", action: { (bodyCondition: BodyCondition) in
    bodyCondition.changeStatusAfterActiveRest()
})

let todayRoutine: Routine = Routine(name: "전신 근육 박살내기 루틴", routineArray: [sitUp, sitUp, activeRest, squat, squat, activeRest, longRunning, longRunning])

todayRoutine.startExerciseRoutine()
myBodyCondition.printMucleStatus()


