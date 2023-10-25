//
//  ViewController.swift
//  Concurrency,Sync,Async,Serial, Concurrent queue,ThreadWithExample
//
//  Created by Sainath Bamen on 04/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        queueTesting()
        queueTesting2()
    }
    
    func queueTesting(){
        let myQueue = DispatchQueue(label: "Sainath-serial.queue")
        //First thread
        myQueue.sync {
            print("Task 1 is started")
            //Do some work.
            for index in 1...5{
                print("\(index)[TASK-1] Times 5 is \(index * 5)")
            }
            print("Task 1 finished")
        }
        myQueue.sync {
            print("Task 2 is started")
        }
        print("Task 2 is finished")
    }
    func queueTesting2(){
        let myQueue = DispatchQueue(label: "Sainath-serial.queue", attributes: .concurrent)
        //First thread
        myQueue.async {
            print("Task 3 is started")
            //Do some work
            for index in 1...5{
                print("\(index)[TASK-1] Times 5 is \(index * 5)")
            }
            print("Task 3 finished")
        }
        myQueue.async {
            print("Task 4 is started")
        }
        print("Task 4 is finished")
    }

     
    

}

