//
//  Operator.swift
//  Calculator
//
//  Created by DONGWOOK SEO on 2023/01/16.
//

import Foundation

enum Operator: Character, CalculatorItem, CaseIterable {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    
    func calculate(lhs: Double, rhs: Double) -> Double {
        switch self {
        case .add:
            return add(lhs: lhs, rhs: rhs)
        case .subtract:
            return subtract(lhs: lhs, rhs: rhs)
        case .multiply:
            return multiply(lhs: lhs, rhs: rhs)
        case .divide:
            return divide(lhs: lhs, rhs: rhs)
        }
    }
    
    private func add(lhs: Double, rhs: Double) -> Double {
        return lhs + rhs
    }
    private func subtract(lhs: Double, rhs: Double) -> Double {
        return lhs - rhs
    }
    private func multiply(lhs: Double, rhs: Double) -> Double {
        return lhs * rhs
    }
    private func divide(lhs: Double, rhs: Double) -> Double {
        return lhs / rhs
    }
}
