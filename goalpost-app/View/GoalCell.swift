//
//  GoalCell.swift
//  goalpost-app
//
//  Created by farnaz on 2019-10-21.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description :  String, type: GoalType, goalProgressAmount : Int){
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
        
    }
    
    
  
}
