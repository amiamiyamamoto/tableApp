//
//  ViewController.swift
//  tableApp
//
//  Created by s247 on 2017/11/30.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    
    let members:[String] = ["近藤", "遠山", "山本"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        //storyBoadで指定したidentify　todoCell識別子を利用して再利用可能なセルを取得する
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //行番号に合ったToDoのタイトルを取得
//        let title = todoList[indexPath.row]
        let member = members[indexPath.row]
        
        //CellのラベルにToDoのタイトルをセット
//        cell.textLabel?.text = todoTitle
        cell.textLabel?.text = member
        return cell

        
        
        
        
        
        
        
        
    }


}

