//
//  ViewController.swift
//  MyCalendar
//
//  Created by SeoYeon Hong on 2021/03/21.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {
    
    let calendar = FSCalendar()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCalendar()
        addConstraints()
    }
    
    func setupCalendar() {
        calendar.dataSource = self
        calendar.delegate = self
        view.addSubview(calendar)
        calendar.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 12),
            calendar.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 4),
            calendar.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -4),
            calendar.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
}

extension  ViewController: FSCalendarDelegate, FSCalendarDataSource {
    
}
