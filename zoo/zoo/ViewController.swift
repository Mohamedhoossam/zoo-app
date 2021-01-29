//
//  ViewController.swift
//  zoo
//
//  Created by mohamed hossam on 1/28/21.
//  Copyright © 2021 mohamed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableviwe1: UITableView!
    
  
    var Animales=Array<mycell>()

    override func viewDidLoad() {
        super.viewDidLoad()
        Animales.append(mycell(name: "monkey / قرد", image: "monkey", Des: "حيوان جيد ويحب اللعب مع الناس وأكل الموز ويعيش في الغابه علي الاشجار"))
        Animales.append(mycell(name: "cat / قطه ", image: "cat", Des: "حيوان الليف ويحب اللبن,ويعيش مع البشر في المنازل ويعيش ابضا في الشوارع"))
         Animales.append(mycell(name: "hyena / ضبع", image: "hyena", Des:"حيوان مفترس ويتغذي علي اللحوم,وغير الليف"))
         Animales.append(mycell(name: "cow /بقره", image: "cow", Des:" تعطينا البقرة الحليب واللحوم,وتتغذي علي النباتات"))
         Animales.append(mycell(name: "dog / كلب", image: "dog", Des:"تعتبر الكلاب من أكثر الحيوانات ولاءً للانسان. منذ العصور,وهو حيوان اليف"))
         Animales.append(mycell(name: "elephant / فيل", image: "elephant", Des:"الفيل حيوان غير قاتل ونأخذ منه العاج,وهو اضخم حيوان بري"))
         Animales.append(mycell(name: "lion / اسـد", image: "lion", Des:"الاسد هو حيوان مفترس,يتغذي علي اللحوم ,وهو ملك الغابه"))
         Animales.append(mycell(name: "Penguin / بطريق", image: "Penguin", Des:"هو نوع من الطيور البحرية غير القادرة على الطيران ويتغزي علي الاسماك"))
         Animales.append(mycell(name: "sheep / خروف", image: "sheep", Des:" الخروف هو حيوان غير اليف وناخذ منه الصوف واللحم والحليب"))
         Animales.append(mycell(name: "zebra / حمار وحشي", image: "zebra", Des:"الحمار الوحشي هو حيوان مفترس وياكل اللحوم ويعيش في الغابه"))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animales.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! thecellTableViewCell
        
        cell.Iname.text=Animales[indexPath.row].name!
        cell.Iamge.image=UIImage(named: Animales[indexPath.row].image!)
        cell.IDes.text=Animales[indexPath.row].Des!

        return cell
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }

}

