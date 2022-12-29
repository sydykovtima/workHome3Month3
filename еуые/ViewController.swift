//
//  ViewController.swift
//  еуые
//
//  Created by Mac on 12/12/2022.
//

import UIKit

class ViewController: UIViewController  {
  

@IBOutlet weak var namesTableView: UITableView!
    var names:[String] = ["Temirlan", "Dastan", "Kamila", "Aziza", "Gulkayir", "Bermet"]
    var numbers:[String] = ["070324324", "099943234", "070373234","0504253234", "0777324324", "0999923423"]
    
 
    
    var addButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        namesTableView.delegate = self
        name  sTableView.register(UITableViewCell.self, forCellReuseIdentifier: "name_cell")
    }
    
    
    
   
}
extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "name_cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVc = storyboard?.instantiateViewController(withIdentifier: "second_vc") as! ViewController2
        secondVc.info = names[indexPath.row] as! String
        secondVc.num = numbers[indexPath.row] as! String
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
}

