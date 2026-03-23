def calculate_simple_interest(principal, rate, time):
    """
    Calculate simple interest and the total amount.
    Formula: I = P * r * t
    """
    # Interest = Principal * (Rate/100) * Time
    interest = principal * (rate / 100) * time
    total_balance = principal + interest
    
    return interest, total_balance

def main():
    print("=== Simple Interest Calculator ===")
    
    try:
        # User inputs
        p = float(input("Enter Principal amount: "))
        r = float(input("Enter Annual Interest Rate (%): "))
        t = float(input("Enter Time period (Years): "))
        
        # Calculation
        interest, total = calculate_simple_interest(p, r, t)
        
        # Output results
        print("\n--- Calculation Results ---")
        print(f"Total Interest Earned: {interest:,.2f}")
        print(f"Total Balance (P + I): {total:,.2f}")
        
    except ValueError:
        print("Error: Please enter valid numerical values.")

if __name__ == "__main__":
    main()
