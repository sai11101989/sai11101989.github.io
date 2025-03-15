#!/usr/bin/python3
def is_narcissistic(n):
    """Check if a number is narcissistic."""
    # Convert the number to a string to easily get the number of digits
    num_str = str(n)
    num_digits = len(num_str)

    # Calculate the sum of each digit raised to the power of the number of digits
    sum_of_powers = sum(int(digit) ** num_digits for digit in num_str)

    # Return True if the sum equals the original number, False otherwise
    return sum_of_powers == n

def print_narcissistic_numbers(start, end):
    """Print all narcissistic numbers in a given range."""
    for num in range(start, end + 1):
        if is_narcissistic(num):
            print(num)

# Example usage: Print all narcissistic numbers between 100 and 500
print_narcissistic_numbers(100, 500)
