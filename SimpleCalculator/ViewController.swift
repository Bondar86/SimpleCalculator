//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Иван Бондаренко on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isNewValue = true
    var operation: MathOperation? = nil
    var previousOperation: MathOperation? = nil
    var result: Double = 0
    var newValue: Double = 0
    
    private lazy var finalLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 100)
        label.textColor = .white
        label.text = "0"
        return label
    }()
    
    private lazy var buttonZero: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(zero), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonOne: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(one), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(two), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonThree: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(three), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonFour: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(four), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonFive: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(five), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSix: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(six), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSeven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(seven), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonEight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(eight), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonNine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(nine), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSeparator: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(separator), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonEqual: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(equal), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonPlus: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(plus), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonMinus: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(minus), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonMultiply: UIButton = {
        let button = UIButton()
        button.setTitle("x", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(multiply), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonDivision: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(division), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonReset: UIButton = {
        let button = UIButton()
        button.setTitle("C", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 37.5
        button.addTarget(self, action: #selector(reset), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addViews()
        addConstraints()
    }
    
    func getInteger() -> Double {
        return Double(finalLabel.text ?? "0") ?? 0
    }
    
    @objc func zero() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("0")
        finalLabel.text = digits
    }
    
    @objc func one() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("1")
        finalLabel.text = digits
    }
    
    @objc func two() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("2")
        finalLabel.text = digits
    }
    
    @objc func three() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("3")
        finalLabel.text = digits
    }
    
    @objc func four() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("4")
        finalLabel.text = digits
    }
    
    @objc func five() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("5")
        finalLabel.text = digits
    }
    
    @objc func six() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("6")
        finalLabel.text = digits
    }
    
    @objc func seven() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("7")
        finalLabel.text = digits
    }
    
    @objc func eight() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("8")
        finalLabel.text = digits
    }
    
    @objc func nine() {
        if isNewValue {
            finalLabel.text = ""
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append("9")
        finalLabel.text = digits
    }
    
    @objc func separator() {
        if isNewValue {
            finalLabel.text = "0"
            isNewValue = false
        }
        var digits = finalLabel.text
        digits?.append(".")
        finalLabel.text = digits
    }
    
    @objc func equal() {
        guard let operation = operation else {
            return
        }
        
        if previousOperation != operation {
            newValue = getInteger()
        }
        
        result = operation.makeOperation(result: result, newValue: newValue)
        previousOperation = operation
        finalLabel.text = "\(result)"
        isNewValue = true
    }
    
    @objc func plus() {
        operation = .sum
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func minus() {
        operation = .subtract
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func multiply() {
        operation = .multiply
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func division() {
        operation = .division
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func reset() {
        isNewValue = true
        result = 0
        newValue = 0
        operation = nil
        previousOperation = nil
        finalLabel.text = "0"
    }
    
    private func addViews() {
        view.addSubview(finalLabel)
        view.addSubview(buttonZero)
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonFour)
        view.addSubview(buttonFive)
        view.addSubview(buttonSix)
        view.addSubview(buttonSeven)
        view.addSubview(buttonEight)
        view.addSubview(buttonNine)
        view.addSubview(buttonSeparator)
        view.addSubview(buttonEqual)
        view.addSubview(buttonPlus)
        view.addSubview(buttonMinus)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonDivision)
        view.addSubview(buttonReset)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            finalLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            finalLabel.bottomAnchor.constraint(equalTo: buttonReset.topAnchor, constant: -20),
            
            buttonZero.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonZero.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buttonZero.heightAnchor.constraint(equalToConstant: 75),
            buttonZero.widthAnchor.constraint(equalToConstant: 170),
            
            buttonOne.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonOne.topAnchor.constraint(equalTo: buttonFour.bottomAnchor, constant: 20),
            buttonOne.heightAnchor.constraint(equalToConstant: 75),
            buttonOne.widthAnchor.constraint(equalToConstant: 75),
            
            buttonTwo.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: 20),
            buttonTwo.topAnchor.constraint(equalTo: buttonOne.topAnchor),
            buttonTwo.heightAnchor.constraint(equalToConstant: 75),
            buttonTwo.widthAnchor.constraint(equalToConstant: 75),
            
            buttonThree.leadingAnchor.constraint(equalTo: buttonTwo.trailingAnchor, constant: 20),
            buttonThree.topAnchor.constraint(equalTo: buttonOne.topAnchor),
            buttonThree.heightAnchor.constraint(equalToConstant: 75),
            buttonThree.widthAnchor.constraint(equalToConstant: 75),
            
            buttonFour.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonFour.topAnchor.constraint(equalTo: buttonSeven.bottomAnchor, constant: 20),
            buttonFour.heightAnchor.constraint(equalToConstant: 75),
            buttonFour.widthAnchor.constraint(equalToConstant: 75),
            
            buttonFive.leadingAnchor.constraint(equalTo: buttonFour.trailingAnchor, constant: 20),
            buttonFive.topAnchor.constraint(equalTo: buttonFour.topAnchor),
            buttonFive.heightAnchor.constraint(equalToConstant: 75),
            buttonFive.widthAnchor.constraint(equalToConstant: 75),
            
            buttonSix.leadingAnchor.constraint(equalTo: buttonFive.trailingAnchor, constant: 20),
            buttonSix.topAnchor.constraint(equalTo: buttonFour.topAnchor),
            buttonSix.heightAnchor.constraint(equalToConstant: 75),
            buttonSix.widthAnchor.constraint(equalToConstant: 75),
            
            buttonSeven.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonSeven.topAnchor.constraint(equalTo: buttonReset.bottomAnchor, constant: 20),
            buttonSeven.heightAnchor.constraint(equalToConstant: 75),
            buttonSeven.widthAnchor.constraint(equalToConstant: 75),
            
            buttonEight.leadingAnchor.constraint(equalTo: buttonSeven.trailingAnchor, constant: 20),
            buttonEight.topAnchor.constraint(equalTo: buttonSeven.topAnchor),
            buttonEight.heightAnchor.constraint(equalToConstant: 75),
            buttonEight.widthAnchor.constraint(equalToConstant: 75),
            
            buttonNine.leadingAnchor.constraint(equalTo: buttonEight.trailingAnchor, constant: 20),
            buttonNine.topAnchor.constraint(equalTo: buttonSeven.topAnchor),
            buttonNine.heightAnchor.constraint(equalToConstant: 75),
            buttonNine.widthAnchor.constraint(equalToConstant: 75),
            
            buttonSeparator.leadingAnchor.constraint(equalTo: buttonEight.trailingAnchor, constant: 20),
            buttonSeparator.topAnchor.constraint(equalTo: buttonZero.topAnchor),
            buttonSeparator.heightAnchor.constraint(equalToConstant: 75),
            buttonSeparator.widthAnchor.constraint(equalToConstant: 75),
            
            buttonEqual.leadingAnchor.constraint(equalTo: buttonSeparator.trailingAnchor, constant: 20),
            buttonEqual.topAnchor.constraint(equalTo: buttonSeparator.topAnchor),
            buttonEqual.heightAnchor.constraint(equalToConstant: 75),
            buttonEqual.widthAnchor.constraint(equalToConstant: 75),
            
            buttonPlus.leadingAnchor.constraint(equalTo: buttonThree.trailingAnchor, constant: 20),
            buttonPlus.topAnchor.constraint(equalTo: buttonThree.topAnchor),
            buttonPlus.heightAnchor.constraint(equalToConstant: 75),
            buttonPlus.widthAnchor.constraint(equalToConstant: 75),
            
            buttonMinus.leadingAnchor.constraint(equalTo: buttonSix.trailingAnchor, constant: 20),
            buttonMinus.topAnchor.constraint(equalTo: buttonSix.topAnchor),
            buttonMinus.heightAnchor.constraint(equalToConstant: 75),
            buttonMinus.widthAnchor.constraint(equalToConstant: 75),
            
            buttonDivision.leadingAnchor.constraint(equalTo: buttonReset.trailingAnchor, constant: 20),
            buttonDivision.topAnchor.constraint(equalTo: buttonReset.topAnchor),
            buttonDivision.heightAnchor.constraint(equalToConstant: 75),
            buttonDivision.widthAnchor.constraint(equalToConstant: 75),
            
            buttonMultiply.leadingAnchor.constraint(equalTo: buttonNine.trailingAnchor, constant: 20),
            buttonMultiply.topAnchor.constraint(equalTo: buttonNine.topAnchor),
            buttonMultiply.heightAnchor.constraint(equalToConstant: 75),
            buttonMultiply.widthAnchor.constraint(equalToConstant: 75),
            
            buttonReset.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonReset.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 285),
            buttonReset.heightAnchor.constraint(equalToConstant: 75),
            buttonReset.widthAnchor.constraint(equalToConstant: 265)
        ])
    }
}

enum MathOperation {
    case sum, subtract, multiply, division
    
    func makeOperation(result: Double, newValue: Double) -> Double {
        switch self {
        case .sum:
            return (result + newValue)
        case .subtract:
            return (result - newValue)
        case .multiply:
            return (result * newValue)
        case .division:
            if result == 0 {
                return 0
            } else if newValue == 0 {
                return 0
            } else {
                return (result / newValue)
            }
        }
    }
}

