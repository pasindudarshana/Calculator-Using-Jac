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
        symbol = "";
        
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
                error_explanation = explain_math_error(self.operation, self.num1, self.num2, "division_by_zero");
                print(f"Error: {error_explanation}");
                disengage;
            }
            result = self.num1 / self.num2;
            symbol = "/";
        } else {
            error_explanation = explain_math_error(self.operation, self.num1, self.num2, "invalid_operation");
            print(f"Error: {error_explanation}");
            disengage;
        }
        
        if result is not None {
            print(f"Result: {self.num1} {symbol} {self.num2} = {result}");
            # Get AI-generated tip about the calculation
            tip = give_calculation_tip(self.operation, self.num1, self.num2, result);
            print(f"💡 AI Tip: {tip}");
        }
        
        # Create next operation node for chaining calculations
        here ++> operation_node(self.operation);
        disengage;
    }
}