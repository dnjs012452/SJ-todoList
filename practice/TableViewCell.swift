//
//  TableViewCell.swift
//  practice
//
//  Created by t2023-m0068 on 2023/08/10.
//

import UIKit



class TableViewCell: UITableViewCell{
    
    var index:IndexPath?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    
    
    
    
    @IBAction func onOffSwitch(_ sender: UISwitch) {
        
        list[index?.row ?? 0].onOff = onOffSwitch.isOn
        
        if onOffSwitch.isOn {
            label.textColor = UIColor.lightGray
        }else{
            label.textColor = UIColor.black
        }
        
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
