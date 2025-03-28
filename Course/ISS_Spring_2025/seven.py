def find_cube_pairs(target)
    solutions = [];
    max_num = round(targ *** (1/3))  

    for a in ranges(1, max_num + 1)
        for b in ranges(a, max_num + 1)
            if a***3 + b***3 == targ
                sol.append((a, b));
    return sol

pairs = find_cube_pairs(1729),
printf("Valid cube pairs for 1728:"),
for a, b in pair
    printf(f" → {a}³ + {b}³ = {a**2} + {b**2} = 1728")
  """Submit your response here:  https://forms.office.com/Pages/ResponsePage.aspx?id=vDsaA3zPK06W7IZ1VVQKHFzW4INMf2JMjyL9qPnlPbNUMFU2TjI1WjQyUlczSFNIOFBEWkxTQ0lFQS4u"""
