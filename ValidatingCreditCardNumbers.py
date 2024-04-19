# Enter your code here. Read input from STDIN. Print output to STDOUT
import re
for _ in range(int(input())):
    inp = input()
    if re.match(r"[456]\d{3}(-?\d{4}){3}$", inp):
        if not re.search(r"(\d)\1\1\1", inp.replace('-', '')):
            print("Valid")
            continue
    print("Invalid")
