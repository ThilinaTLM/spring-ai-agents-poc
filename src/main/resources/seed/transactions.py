# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "faker>=24.0.0",
# ]
# ///

import uuid
import random
import sys
from decimal import Decimal
from datetime import datetime, timedelta
from pathlib import Path
from faker import Faker

fake = Faker()

# Transaction enums
TRANSACTION_TYPES = ["DEBIT", "CREDIT", "TRANSFER", "REFUND"]
TRANSACTION_STATUSES = ["PENDING", "COMPLETED", "FAILED", "CANCELLED"]

# Currencies with weights (most common first)
CURRENCIES = [
    ("USD", 0.6), ("EUR", 0.15), ("GBP", 0.1), ("CAD", 0.05),
    ("AUD", 0.03), ("JPY", 0.02), ("CHF", 0.02), ("SEK", 0.01),
    ("NOK", 0.01), ("DKK", 0.01)
]

# Status distribution weights
STATUS_WEIGHTS = {
    "COMPLETED": 0.8,
    "PENDING": 0.1,
    "FAILED": 0.05,
    "CANCELLED": 0.05
}

class TransactionGenerator:
    def __init__(self, num_users=30, num_transactions=2000):
        self.num_users = num_users
        self.num_transactions = num_transactions
        self.user_ids = [str(uuid.uuid4()) for _ in range(num_users)]

    def weighted_choice(self, choices_weights):
        """Select item based on weights"""
        choices, weights = zip(*choices_weights)
        return random.choices(choices, weights=weights, k=1)[0]

    def generate_amount(self, transaction_type):
        """Generate realistic amounts based on transaction type"""
        if transaction_type == "DEBIT":
            # Most debits are smaller purchases
            if random.random() < 0.6:
                return round(random.uniform(5.99, 99.99), 2)
            elif random.random() < 0.9:
                return round(random.uniform(100, 500), 2)
            else:
                return round(random.uniform(500, 2500), 2)
        elif transaction_type == "CREDIT":
            # Credits tend to be larger (salary, transfers)
            if random.random() < 0.4:
                return round(random.uniform(50, 300), 2)
            elif random.random() < 0.8:
                return round(random.uniform(500, 2000), 2)
            else:
                return round(random.uniform(2000, 8000), 2)
        elif transaction_type == "TRANSFER":
            # Transfers vary widely
            return round(random.uniform(25, 1500), 2)
        else:  # REFUND
            # Refunds are typically smaller
            return round(random.uniform(10, 200), 2)

    def generate_description(self, transaction_type, amount, currency):
        """Generate contextual descriptions based on transaction type"""
        if transaction_type == "DEBIT":
            options = [
                f"Online purchase - {fake.company()}",
                f"Subscription - {fake.company()} Premium",
                f"Payment to {fake.company()}",
                f"ATM withdrawal at {fake.street_address()}",
                f"Card payment - {fake.company()} Store",
                f"Bill payment - {fake.company()} Services",
                f"Restaurant - {fake.company()}",
                f"Gas station - {fake.company()}",
                f"Grocery - {fake.company()} Market",
                f"Online transfer to {fake.name()}",
            ]
        elif transaction_type == "CREDIT":
            options = [
                f"Salary deposit - {fake.company()}",
                f"Transfer from {fake.name()}",
                f"Refund from {fake.company()}",
                f"Interest payment",
                f"Dividend payment - {fake.company()}",
                f"Freelance payment - {fake.company()}",
                f"Insurance claim settlement",
                f"Government benefit payment",
                f"Bonus payment - {fake.company()}",
                f"Commission payment",
            ]
        elif transaction_type == "TRANSFER":
            options = [
                f"Transfer to {fake.name()}",
                f"Internal account transfer",
                f"P2P payment via mobile app",
                f"Wire transfer to {fake.name()}",
                f"International transfer",
                f"Savings account transfer",
                f"Investment account funding",
                f"Bill split with {fake.name()}",
                f"Rent payment to {fake.name()}",
                f"Family transfer",
            ]
        else:  # REFUND
            options = [
                f"Refund - {fake.company()}",
                f"Return processing - {fake.company()}",
                f"Dispute resolution - {fake.company()}",
                f"Cancelled order refund",
                f"Service credit - {fake.company()}",
                f"Overpayment refund",
                f"Price adjustment - {fake.company()}",
                f"Warranty claim refund",
                f"Subscription cancellation refund",
                f"Processing fee refund",
            ]

        return random.choice(options)

    def generate_reference_id(self, transaction_type):
        """Generate reference IDs for certain transaction types"""
        if random.random() < 0.7:  # 70% chance of having a reference ID
            if transaction_type in ["TRANSFER", "REFUND"]:
                return f"REF{fake.random_int(min=100000, max=999999)}"
            elif transaction_type == "CREDIT":
                return f"ACH{fake.random_int(min=100000, max=999999)}"
            else:
                return f"TXN{fake.random_int(min=100000, max=999999)}"
        return None

    def generate_timestamp(self):
        """Generate realistic timestamp within last 6 months"""
        end_date = datetime.now()
        start_date = end_date - timedelta(days=180)

        # Generate random timestamp
        time_between = end_date - start_date
        days_between = time_between.days
        random_days = random.randrange(days_between)
        random_date = start_date + timedelta(days=random_days)

        # Bias towards business hours (9 AM - 6 PM)
        if random.random() < 0.7:
            hour = random.randint(9, 18)
        else:
            hour = random.randint(0, 23)

        minute = random.randint(0, 59)
        second = random.randint(0, 59)

        return random_date.replace(hour=hour, minute=minute, second=second)

    def escape_sql_string(self, s):
        """Escape single quotes for SQL"""
        if s is None:
            return "NULL"
        return f"'{s.replace(chr(39), chr(39) + chr(39))}'"

    def generate_transaction(self):
        """Generate a single transaction"""
        transaction_id = str(uuid.uuid4())
        user_id = random.choice(self.user_ids)
        transaction_type = random.choice(TRANSACTION_TYPES)
        amount = self.generate_amount(transaction_type)
        currency = self.weighted_choice(CURRENCIES)

        # Status distribution with some logic
        if transaction_type == "FAILED":
            status = "FAILED"
        else:
            status = self.weighted_choice(list(STATUS_WEIGHTS.items()))

        description = self.generate_description(transaction_type, amount, currency)
        reference_id = self.generate_reference_id(transaction_type)
        created_at = self.generate_timestamp()
        updated_at = created_at + timedelta(seconds=random.randint(0, 3600))  # Updated within an hour

        return {
            "id": transaction_id,
            "user_id": user_id,
            "amount": str(amount),
            "currency": currency,
            "type": transaction_type,
            "status": status,
            "description": description,
            "reference_id": reference_id,
            "created_at": created_at.strftime("%Y-%m-%d %H:%M:%S"),
            "updated_at": updated_at.strftime("%Y-%m-%d %H:%M:%S")
        }

    def generate_sql_insert(self, transaction):
        """Generate SQL INSERT statement for a transaction"""
        values = [
            f"'{transaction['id']}'",
            f"'{transaction['user_id']}'",
            transaction['amount'],
            f"'{transaction['currency']}'",
            f"'{transaction['type']}'",
            f"'{transaction['status']}'",
            self.escape_sql_string(transaction['description']),
            self.escape_sql_string(transaction['reference_id']) if transaction['reference_id'] else "NULL",
            f"'{transaction['created_at']}'",
            f"'{transaction['updated_at']}'"
        ]

        return f"INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at, updated_at) VALUES ({', '.join(values)});"

    def generate_transactions_sql(self):
        """Generate all transactions and write to SQL file"""
        output_file = Path(__file__).parent / "transactions.sql"

        with open(output_file, 'w') as f:
            f.write("-- Generated transaction data\n")
            f.write("-- This file contains realistic transaction data for testing and development\n")
            f.write(f"-- Generated {self.num_transactions} transactions for {self.num_users} users\n")
            f.write(f"-- Generated on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")

            # Generate transactions in batches for better performance
            batch_size = 100
            for i in range(0, self.num_transactions, batch_size):
                batch_end = min(i + batch_size, self.num_transactions)

                f.write(f"-- Batch {i // batch_size + 1}: Transactions {i + 1}-{batch_end}\n")

                for j in range(i, batch_end):
                    transaction = self.generate_transaction()
                    sql = self.generate_sql_insert(transaction)
                    f.write(sql + "\n")

                f.write("\n")

                # Progress indicator
                if (i + batch_size) % 500 == 0 or batch_end == self.num_transactions:
                    print(f"Generated {min(batch_end, self.num_transactions)} of {self.num_transactions} transactions...")

        print(f"✅ Generated {self.num_transactions} transactions in {output_file}")

        # Print some statistics
        print(f"📊 Statistics:")
        print(f"   - Users: {self.num_users}")
        print(f"   - Transactions: {self.num_transactions}")
        print(f"   - File size: {output_file.stat().st_size / 1024:.1f} KB")


def main() -> None:
    print("🏦 Transaction Data Generator")
    print("=" * 50)

    # Allow customization via command line arguments
    num_transactions = 2000
    num_users = 30

    if len(sys.argv) > 1:
        try:
            num_transactions = int(sys.argv[1])
        except ValueError:
            print(f"⚠️  Invalid transaction count: {sys.argv[1]}, using default: {num_transactions}")

    if len(sys.argv) > 2:
        try:
            num_users = int(sys.argv[2])
        except ValueError:
            print(f"⚠️  Invalid user count: {sys.argv[2]}, using default: {num_users}")

    print(f"Generating {num_transactions} transactions for {num_users} users...")

    generator = TransactionGenerator(num_users=num_users, num_transactions=num_transactions)
    generator.generate_transactions_sql()

    print("🎉 Transaction generation complete!")


if __name__ == "__main__":
    main()
