//
//  CoffeeMachine.swift
//  CoffeeMachine
//
//  Created by Головаш Анастасия on 6/5/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import Foundation

class CoffeeMachinee {
    private(set) var water = 0
    private(set) var coffee = 0
    private(set) var milk = 0
    private(set) var trash = 0
    
    init(water: Int, coffee: Int, milk: Int) {
        self.water = water
        self.coffee = coffee
        self.milk = milk
    }
    
    func addWater(amount: Int) {
        water += amount
    }
    
    func addCoffee(amount: Int) {
        coffee += amount
    }
    
    func addMilk(amount: Int) {
        milk += amount
    }
    
    func clear() {
        trash = 0
    }

    func isEnoughtIngredients(water: Int, coffee: Int, milk: Int, name: String) -> String {
        if self.coffee < coffee {
            print("Not enought coffee!!! Coffe level is \(self.coffee)")
            
            return "Not enought coffee!!! Coffe level is \(self.coffee)"
        } else if self.water < water{
            print("Not enought water!!! Water level is \(self.water)")
            
            return "Not enought water!!! Water level is \(self.water)"
        } else if self.milk < milk{
            print("Not enought milk!!! Milk level is \(self.milk)")
            return "Not enought milk!!! Milk level is \(self.milk)"
        } else if trash >= 5 {
            print("Tray is full")
            return "Tray is full"
        } else {
            trash += 1
            self.coffee -= coffee
            self.milk -= milk
            self.water -= water
            print("Your \(name), Sir")
            return "Your \(name), Sir"
        }
    }
    
    func makeLatte() -> String {
        return isEnoughtIngredients(water: 50, coffee: 30, milk: 70, name: "Latte")
    }
    
    func makeEspresso() -> String {
        return isEnoughtIngredients(water: 50, coffee: 30, milk: 0, name: "Espresso")
    }
    
    func makeCappuccino() -> String {
        return isEnoughtIngredients(water: 50, coffee: 30, milk: 30, name: "Cappuccino")
    }
    
    func makeAmericano() -> String {
        return isEnoughtIngredients(water: 80, coffee: 30, milk: 0, name: "Americano")
    }
    
}
