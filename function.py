def calculate_discount(price, discount_percent):
    if discount_percent >= 20:
        discount_amount = price * (discount_percent / 100)
        final_price = price - discount_amount
        return final_price
    else:
        return price
original_price = float(input("125: $"))
discount_percentage = float(input("20: "))

final_price = calculate_discount(original_price, discount_percentage)

if final_price != original_price:
    print(f"After applying a {discount_percentage}% discount, the final price is: ${final_price:.2f}")
else:
    print("No discount applied. The original price remains: $", original_price)
