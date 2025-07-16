impl Calculator.start {
    if not [root --> (`?operation_node)] {
        next = root ++> operation_node(self.operation);
    } else {
        next = [root --> (`?operation_node)];
    }
    visit next;
}

impl Calculator.perform_calculation {
    if [-->] {
        visit [-->];
    } else {
        result = None;
        
        if self.operation == "add" {
            result = self.num1 + self.num2;
            symbol = "+";
        } elif self.operation == "subtract" {
            result = self.num1 - self.num2;
            symbol = "-";
        } elif self.operation == "multiply" {
            result = self.num1 * self.num2;
            symbol = "*";
        } elif self.operation == "divide" {
            if self.num2 == 0 {
                print("Error: Division by zero is not allowed!");
                disengage;
            }
            result = self.num1 / self.num2;
            symbol = "/";
        } else {
            print("Invalid operation!");
            disengage;
        }
        
        if result is not None {
            print(f"Result: {self.num1} {symbol} {self.num2} = {result}");
        }
        
        # Create next operation node for chaining calculations
        here ++> operation_node(self.operation);
        disengage;
    }
}