from __future__ import print_function
import random

buzz = ('1', '2', '3', '4', '5', '6')

def sample(l, n = 1):
    result = random.sample(l, n)
    if n == 1:
        return result[0]
    return result

def generate_buzz():
    buzz_terms = sample(buzz, 2)
    phrase = sample(buzz)
    return phrase.title()

if __name__ == "__main__":
    print(generate_buzz())
