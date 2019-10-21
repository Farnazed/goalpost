//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by farnaz on 2019-10-21.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false

    }
    

    @IBAction func addGoalsBtnPressed(_ sender: Any) {
        print("Btn was Pressed")
    }
    

}

extension GoalsVC : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell()}
        cell.configureCell(description: "practic ios every other day ", type: .longTerm, goalProgressAmount: 7)
        return cell
    }
}
