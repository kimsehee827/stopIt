//
//  TaskListViewModel.swift
//  Front
//
//  Created by 오인경 on 2021/08/27.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskCellViewModel]()
    var targetTask: TaskModel
    
    init(target: TaskModel) {
        // 이부분 수정하면 됨.
        // 현재 로컬 테스트 데이터로 함
        self.targetTask = target
        
        self.taskCellViewModels = targetTask.tasks.map { task in
            TaskCellViewModel(task: task)
        }
    }

}
