"""A Basic Calculator"""
import from mtllm.llms { OpenAI, Gemini };

# glob llm = OpenAI(model_name="gpt-4o", verbose=False);
glob llm = Gemini(model_name="gemini-1.5-flash", verbose=False);

"""Provide helpful calculation tips and explanations"""
def give_calculation_tip(operation: str, num1: float, num2: float, result: float) -> str by llm();

"""Provide error explanations for mathematical operations"""
def explain_math_error(operation: str, num1: float, num2: float, error_type: str) -> str by llm();

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
    root spawn Calculator(operation="divide", num1=10.0, num2=0.0);
}