//
//  HomeController.swift
//  TestTechnique
//
//  Created by Ahmed on 06/01/2022.
//

import Foundation
import UIKit
class HomeController: UIViewController {
    @IBOutlet var mTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}



// MARK: - Table view data source
extension HomeController :UITableViewDataSource,UITableViewDelegate {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "collectionCell", for: indexPath) as? CollectionViewCell else {
            fatalError("Unable to create a table")
        
        }
           
        return cell
    }
}
    
}

