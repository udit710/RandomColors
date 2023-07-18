//
//  ColorsTableVCViewController.swift
//  RandomColors
//
//  Created by udit on 17/11/22.
//

import UIKit

class ColorsTableVC: UIViewController{
    
    var colors: [UIColor] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandColor()
        // Do any additional setup after loading the view.
    }
    
    func addRandColor(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }


}



extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // No of rows to show
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // What to show in those rows
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { return UITableViewCell()}
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
}
