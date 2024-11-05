# Transaction Management System

A mobile app built using Flutter for managing transactions, checking balances, and viewing transaction histories. 
This app integrates with M-Pesa's Daraja API for real-time transaction processing, STK push, and balance checks.
This project is a part of my journey to implement and showcase a robust mobile payment system with clean, maintainable code.

## Features

- **Send Money**: Seamless money transfer via M-Pesa STK push integration.
- **Check Balance**: Check M-Pesa account balance directly from the app.
- **View Transactions**: View transaction history and status updates.
- **Transaction Status**: Track the current status of each transaction.
  
## Screens

- **Home Screen**: Overview and navigation to different features.
- **Send Money Screen**: Enter recipient details and initiate a payment.
- **Check Balance Screen**: Displays the current balance.
- **View Transactions Screen**: Shows transaction history.
- **Transaction Status Screen**: Displays details and status for individual transactions.

## Tech Stack

- **Flutter**: For building the cross-platform UI
- **Provider**: State management
- **Retrofit**: For network requests
- **SQLite**: Local storage
- **Docker**: Containerized builds for consistent deployment

## API Integration

This app uses the **M-Pesa Daraja API** to perform transactions and check balance. 

### API Endpoints:
- **STK Push**: Initiate a payment from the app to the M-Pesa API.
- **Balance Check**: Retrieve the balance of the linked M-Pesa account.
- **Transaction Status**: Check the status of a transaction by ID.

## Getting Started

### Prerequisites

- **Flutter SDK**: [Flutter installation guide](https://flutter.dev/docs/get-started/install)
- **Android Studio or Xcode**: For running the app on an emulator or real device
- **Docker** (optional): For containerized builds

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/Munira12345/transaction_management.git
    cd transaction_management
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app on an emulator or device:

    ```bash
    flutter run
    ```

### Building the App in Docker

To build the Flutter app for Android using Docker, run:

```bash
docker build -t flutter-android-app .
docker run -p 80:80 flutter-android-app

