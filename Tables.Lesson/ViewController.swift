//
//  ViewController.swift
//  Tables.Lesson
//
//  Created by DA MAC M1 144 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cars=["VW", "BMW", "Mercedes", "Mazda", "Toyota", ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=cars[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
  
    
}

