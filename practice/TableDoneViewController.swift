//
//  doneListView.swift
//  practice
//
//  Created by t2023-m0068 on 2023/08/10.
//

import UIKit

class tableDoneViewController: UIViewController {
    
    @IBOutlet weak var tableDoneView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tableDoneView.dataSource = self
    }
    
}

/*
 extension tableDoneViewController: UITableViewDataSource {
 
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
 return doneView.count
 
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
 let cell = tableDoneView.dequeueReusableCell(withIdentifier: "continueCell", for: indexPath) as! TableViewCell
 
 cell.index = indexPath
 cell.label?.text = doneView[indexPath.row].text
 
 return cell
 
 }
 }
 */
