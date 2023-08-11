//
//  TableViewController.swift
//  practice
//
//  Created by t2023-m0068 on 2023/08/10.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "할일등록하기"  , message: nil , preferredStyle: .alert)
            
        let okButton = UIAlertAction(title: "등록", style: .default) { (ok) in
            
            guard let name = alert.textFields?[0].text else {return}
            list.append(cellData(text: name, onOff: false))
            
            self.myTableView.reloadData()
        }
        
        let cancelButton = UIAlertAction(title: "취소", style: .cancel) { (cancel) in
            
        }
        
        alert.addTextField()
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        
        self.present(alert, animated: true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        
    }
}


extension TableViewController: UITableViewDelegate {
    
}

extension TableViewController: UITableViewDataSource{
    
    //테이블뷰의 길이, 갯수, 셀 갯수 관리하는 메서드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView .dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        
        cell.index = indexPath
        cell.label?.text = list[indexPath.row].text
        cell.onOffSwitch.isOn = list[indexPath.row].onOff
        
        if list[indexPath.row].onOff == true {
            cell.onOffSwitch.isOn = true
        }else {
            cell.onOffSwitch.isOn = false
        }
        return cell
    }
}




