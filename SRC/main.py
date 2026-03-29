from pyswip import Prolog

def career_advisor():
    prolog = Prolog()
    # Load the Prolog knowledge base, If not found, print an error message and exit.
    try:
        prolog.consult("data.pl")
    except Exception:
        print("Error: Check if SWI-Prolog is installed and data.pl is in this folder.")
        return

    print(" AI Universal Career Advisor is UP and RUNNING! ")
    print("Available Options: math, python, biology, empathy, logic, oratory, creativity, design, physics, networking, chemistry, psychology, finance")
    
    # Get user input to understand their interests and traits.
    trait = input("\nWhat do you like doing?: ").lower().strip()
    
    # Insert the user's interest as a fact into the Prolog engine.
    prolog.assertz(f"likes(user, {trait})")
    
    # Asking Prolog for career recommendations based on the user's input.
    results = list(prolog.query("recommend(user, Career)"))
    
    # Display all the recommendations found, ensuring to format the career names nicely. If no recommendations are found, give a friendly message to the user.
    if results:
        print("\nBased on your interest, here are some career paths you might enjoy:")
        unique_careers = set(res['Career'].replace('_', ' ').title() for res in results)
        for career in unique_careers:
            print(f"-> You might enjoy being a {career}")
    else:
        print("\nThat's above my current knowledge. You're on your own, Buddy!")

if __name__ == "__main__":
    career_advisor()