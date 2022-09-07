//
//  ViewController.swift
//  Counter.YP
//
//  Created by Сергей Андреев on 07.09.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Переменная отображения значения счетчика
    
    @IBOutlet private weak var countLabel: UILabel!
    
    //MARK: - Переменная отображения кнопки для изменения значения счетчика
    
    @IBOutlet private weak var countButton: UIButton!
    //MARK: - Переменная значения счетчика
    
   private var count: UInt = 0 {
        didSet {
            updateCounter()
        } /// при каждом обновлении значения переменной обновляется текст в лейбле
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countButton.layer.cornerRadius = 20
        countButton.layer.masksToBounds = true //закругление углов кнопки
    }
    //MARK: - Функция обновления текста в лейбле
    
    private func updateCounter() {
        countLabel.text = "Значение счетчика:  \(count)"
        print("Вызов функции")
    }

    //MARK: - Работа кнопки для изменения значения счетчика
    
    @IBAction private func tapForUpdateCount(_ sender: Any) {
        count += 1
        print("Значение счетчика:  \(count)")
              }
    
}
///
