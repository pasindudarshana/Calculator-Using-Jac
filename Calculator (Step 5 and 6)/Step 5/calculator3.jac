"""A Basic Calculator"""

walker Calculator {
    has operation: str;
    has num1: float;
    has num2: float;
    can start with `root entry;
    can perform_calculation with operation_node entry;
}

node operation_node {
    has operation_type: str;
}


with entry:__main__ {
    root spawn Calculator(operation="add", num1=5.0, num2=3.0);
    root spawn Calculator(operation="subtract", num1=10.0, num2=4.0);
    root spawn Calculator(operation="multiply", num1=6.0, num2=7.0);
    root spawn Calculator(operation="divide", num1=15.0, num2=3.0);
}