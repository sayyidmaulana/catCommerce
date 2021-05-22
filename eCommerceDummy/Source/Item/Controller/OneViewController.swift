//
//  OneViewController.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 22/05/21.
//

import UIKit

class OneViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    
    var dataObject: [MainData] = [
        MainData(img: "Abyssinan", name: "Abyssinian", desc: "Originally from Ethiopia (previously known as Abyssinia), the Abyssinian cat has a distinctive red/orange agouti coat. The agouti fur, which actually means it has bands of light and dark coloring on the individual pieces of hair, gives the Abyssinian its unique look."),
        MainData(img: "Burmese", name: "Birman", desc: "Birmans were used for breeding in the development of Ragdolls, so they look very similar but can have slightly different markings and personalities."),
        MainData(img: "Muezza", name: "Himalayan", desc: "Himalayans were bred from crossing Persians and Siamese to achieve their color points. Himalayans only come in the color point pattern, but this pattern can be a variety of colors."),
        MainData(img: "MaineCoon", name: "Maine Coon", desc: "Many Maine Coons have extra toes, a trait referred to as polydactylism, which makes their already large feet even larger. This is a great feature to have when hunting in the snow since large feet act as snowshoes."),
        MainData(img: "Persian", name: "Persian", desc: "Persians have been seen in many movies, art, commercials, and homes throughout the years and have also been one of the most popular breeds of cats for decades."),
        MainData(img: "Ragdoll", name: "Ragdoll", desc: "Ragdolls look a lot like long-haired Siamese cats with their pointed color patterns. They also have distinctive blue eyes and dog-like personalities, following their owners around the house."),
        MainData(img: "Siam", name: "Siamese", desc: "Siamese cats have distinct markings called points that are the areas of coloration on their face, ears, feet, and tail, but some Siamese may not have any points. There are also two varieties of Siamese cats, one with an apple shaped head and chubbier body and one with a larger head and slender body."),
        MainData(img: "Sphynx", name: "Sphynx", desc: "If you are looking for a cat that doesn't shed, then the Sphynx is for you. Sphynx cats look unique due to their lack of fur and are very social, active, dog-like felines.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupView()
    }
    
    private func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(OneViewCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! OneViewCell
        cell.page = dataObject[indexPath.item]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

}

