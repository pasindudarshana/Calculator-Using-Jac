"""A Basic Calculator in JAC
Seperated into two files for clarity"""

impl Calculator.input_values {
    input_str = input("Enter calculation (e.g.: 8 * 9): ");
    parts = input_str.strip().split(" ");
    if len(parts) != 3 {
        print("Invalid format. Please use: number operator number (e.g., 8 * 9)");
        return False;
    }
    if parts[0].replace('.', '', 1).isdigit() and parts[2].replace('.', '', 1).isdigit() {
        self.num1 = float(parts[0]);
        self.operator = parts[1];
        self.num2 = float(parts[2]);
        return True;
    } else {
        print("Invalid numbers entered.");
        return False;
    }
}

impl Calculator.calculate {
    if self.input_values() {
            if self.operator == "+" {
                result = self.num1 + self.num2;
            } elif self.operator == "-" {
                result = self.num1 - self.num2;
            } elif self.operator == "*" {
                result = self.num1 * self.num2;
            } elif self.operator == "/" {
                if self.num2 == 0 {
                    print("Error: Division by zero.");
                    return;
                }
                result = self.num1 / self.num2;
            } else {
                print("Unsupported operator. Use +, -, *, or /");
                return;
            }
            print(f"Result: {self.num1} {self.operator} {self.num2} = {result}");
    } else {
        print("Failed to get valid input.");
    }
}
