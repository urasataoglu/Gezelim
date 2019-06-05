//
//  ViewController.swift
//  gezilecekYerler
//
//  Created by gofret on 3.06.2019.
//  Copyright © 2019 trihay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
       var sehirler = [String]()
    var izmirGezilecekYerler = [String]()
    var istanbulGezilecekYerler = [String]()
    var AnkaraGezilecekYerler = [String]()
    var gezilecekYerler = [String]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=sehirler[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gezilecekBağlantısı" {
            
            
            let destinationVC = segue.destination as! GezilecekYerlerViewController
            
            destinationVC.SegGezilecekYerler=gezilecekYerler
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.item == 0 {
            
            gezilecekYerler = izmirGezilecekYerler
            
        }
        if indexPath.item == 1 {
            
            gezilecekYerler = istanbulGezilecekYerler
            
        }
       
        performSegue(withIdentifier: "gezilecekBağlantısı", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
        
        sehirler.append("izmir")
        sehirler.append("istanbul")
        sehirler.append("ankara")
        
        izmirGezilecekYerler.append("konak")
        izmirGezilecekYerler.append("alsancak")
        izmirGezilecekYerler.append("kemeraltı")
        
        istanbulGezilecekYerler.append("1")
         istanbulGezilecekYerler.append("2")
        
        // Do any additional setup after loading the view.
    }


}
