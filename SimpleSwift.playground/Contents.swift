import Darwin
import Foundation

print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    if args.last == "count" {
        return args.count - 1
    } else if args.last == "avg" {
        let nums = args.filter {$0 != "avg"}
        if(nums.count == 0) {
            return 0
        }
        var sum = 0
        for num in nums {
            sum += Int(num)!
        }
        let avg = sum / nums.count
        return avg
        
    } else if args.last == "fact" {
        if(args.count == 1) {
            return 0
        }
        
        var currNum = Int(args[0])!
        var total = Int(args[0])!
        while(currNum != 1) {
            currNum = currNum - 1
            total *= currNum
        }
        
        return total
    } else {
        let operand = args[1]
        switch operand {
        case "+":
            return Int(args[0])! + Int(args[2])!
            
        case "-":
            return Int(args[0])! - Int(args[2])!
            
        case "*":
            return Int(args[0])! * Int(args[2])!
            
        case "/":
            return Int(args[0])! / Int(args[2])!
            
        case "%":
            return Int(args[0])! % Int(args[2])!
            
        default:
            return -1
        }
    }
}

func calculate(_ arg: String) -> Int {
    let strArr = arg.split(separator: " ")
    print(strArr)
    if strArr.last == "count" {
        return strArr.count - 1
    } else if strArr.last == "avg" {
            let nums = strArr.filter {$0 != "avg"}
            if(nums.count == 0) {
                return 0
            }
            var sum = 0
            for num in nums {
                sum += Int(num)!
            }
            let avg = sum / nums.count
            return avg
    } else if strArr.last == "fact" {
        if(strArr.count == 1) {
            return 0
        }
            
        var currNum = Int(strArr[0])!
        var total = Int(strArr[0])!
        while(currNum != 1) {
            currNum = currNum - 1
            total *= currNum
        }
            
        return total
    } else {
        let oper = strArr[1]
        
        switch oper {
        case "+":
            return Int(strArr[0])! + Int(strArr[2])!
           
        case "-":
            return Int(strArr[0])! - Int(strArr[2])!
        
        case "*":
            return Int(strArr[0])! * Int(strArr[2])!
            
        case "/":
            return Int(strArr[0])! / Int(strArr[2])!
            
        default:
            return -1
        }
    }
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case)

calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0


calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers
func calculate(_ args: [String]) -> Int {
    if args.last == "count" {
        return args.count - 1
    } else if args.last == "avg" {
        let nums = args.filter {$0 != "avg"}
        if(nums.count == 0) {
            return 0
        }
        var sum = 0
        for num in nums {
            sum += Int(num)!
        }
        let avg = sum / nums.count
        return avg
        
    } else if args.last == "fact" {
        if(args.count == 1) {
            return 0
        }
        
        var currNum = Int(args[0])!
        var total = Int(args[0])!
        while(currNum != 1) {
            currNum = currNum - 1
            total *= currNum
        }
        
        return total
    } else {
        let operand = args[1]
        switch operand {
        case "+":
            return Int(args[0])! + Int(args[2])!
            
        case "-":
            return Int(args[0])! - Int(args[2])!
            
        case "*":
            return Int(args[0])! * Int(args[2])!
            
        case "/":
            return Int(args[0])! / Int(args[2])!
            
        case "%":
            return Int(args[0])! % Int(args[2])!
            
        default:
            return -1
        }
    }
}

func calculate(_ arg: String) -> Int {
    let strArr = arg.split(separator: " ")
    print(strArr)
    if strArr.last == "count" {
        return strArr.count - 1
    } else if strArr.last == "avg" {
            let nums = strArr.filter {$0 != "avg"}
            if(nums.count == 0) {
                return 0
            }
            var sum = 0
            for num in nums {
                sum += Int(num)!
            }
            let avg = sum / nums.count
            return avg
    } else if strArr.last == "fact" {
        if(strArr.count == 1) {
            return 0
        }
            
        var currNum = Int(strArr[0])!
        var total = Int(strArr[0])!
        while(currNum != 1) {
            currNum = currNum - 1
            total *= currNum
        }
            
        return total
    } else {
        let oper = strArr[1]
        
        switch oper {
        case "+":
            return Int(strArr[0])! + Int(strArr[2])!
           
        case "-":
            return Int(strArr[0])! - Int(strArr[2])!
        
        case "*":
            return Int(strArr[0])! * Int(strArr[2])!
            
        case "/":
            return Int(strArr[0])! / Int(strArr[2])!
            
        default:
            return -1
        }
    }
}

calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5

 
// Implement calculate([String]) and calculate(String)
// to use floating-point values

func calculate(_ args: [String]) -> Double {
    let operand = args[1]
    switch operand {
    case "+":
        return Double(args[0])! + Double(args[2])!
        
    case "-":
        return Double(args[0])! - Double(args[2])!
        
    case "*":
        return Double(args[0])! * Double(args[2])!
        
    case "/":
        return Double(args[0])! / Double(args[2])!
        
    case "%":
        return  Double(args[0])!.truncatingRemainder(dividingBy: Double(args[2])!)
        
    default:
        return -1
    }
}

func calculate(_ arg: String) -> Int {
    let strArr = arg.split(separator: " ")
    return strArr.count - 1
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5

