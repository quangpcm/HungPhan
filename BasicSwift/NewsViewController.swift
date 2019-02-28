//
//  NewsViewController.swift
//  BasicSwift
//
//  Created by Phanhug.93 on 2/22/19.
//  Copyright © 2019 Quang Phu C M. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource {
    var data : [String] = ["Hung", "Quang", "Toan","Thuy","Tam"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News"
        configTableView()
        // Do any additional setup after loading the view.
    }
    func configTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "HungCustomCell")
        tableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HungCustomCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.textColor = .blue
        let image1 :UIImageView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        image1.image = ic_likeV2
        switch indexPath.row {
        case 0:
            cell.accessoryType = .none
            cell.accessoryView = image1
        case 1...3:
            cell.accessoryType = .detailButton
        case 4:
            cell.accessoryType = .detailDisclosureButton
        default:
            cell.accessoryType = .disclosureIndicator
        }
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
