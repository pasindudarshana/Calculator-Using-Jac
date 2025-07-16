"""A Basic Calculator in JAC 
Seperated into two files for clarity"""

obj Calculator {
    has num1: float = 0.0, num2: float = 0.0, operator: str = "";

    def input_values;

    def calculate;
}

with entry {
    calc = Calculator();
    calc.calculate();
}
