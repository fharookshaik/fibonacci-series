
def fibonacci(n: int) -> int:
    """Calculate the nth Fibonacci number using Binet's formula.

    Args:
        n (int): The term in the Fibonacci sequence to calculate.

    Returns:
        int: The nth Fibonacci number.

    Raises:
        ValueError: If n is a negative integer.
    """
    if n < 0:
        raise ValueError("Wrong Input! n must be a non-negative integer.")
    elif n == 0:
        return 0
    elif n == 1:
        return 1

    phi = (1 + 5 ** 0.5) / 2
    psi = (1 - 5 ** 0.5) / 2
    return int((phi ** n - psi ** n) / (2 * phi - 1))

if __name__ == "__main__":
    num = int(input("Enter the nth term: "))
    try:
        print(fibonacci(num))
    except ValueError as e:
        print(e)