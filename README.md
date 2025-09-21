# Payment Gateway E-commerce App
This Flutter app demonstrates a complete shopping experience with integrated payment solutions using the MVVM architecture and Provider for state management with multiple payment gateways including Stripe and PayPal.

## Features
**Authentication**: Users can sign in using Google or email/password authentication. Profile information such as the profile image (with a cropping option), first name, and last name can be edited.

**Home Screen**: Displays products fetched from an API with their images, names, and prices. A search bar allows users to filter products by name or category with shimmer loading effects.

**Navigation**: Custom drawer includes the user's image, name, and an option to edit the profile. The drawer also includes options to log out and switch between Arabic and English localization.

**Product Details**: Clicking on a product navigates to a Product Details Screen displaying the product description, ratings, reviews, and stock information with add to cart functionality.

**Shopping Cart**: Users can add products to their cart with quantity management. Cart displays individual item prices and total price calculation with persistent storage.

**Payment Integration**: Stripe and PayPal payment methods integrated for secure transactions. Complete payment flow with success/failure handling and real-time status updates.

**App Bar**: Includes a search bar for quick product filtering and cart icon with badge showing item count for easy navigation.

## Architecture and State Management
### Architecture
The app follows the MVVM (Model-View-ViewModel) architecture pattern with clear separation of concerns:

**Model**: Represents the data structures including ProductModel for product data, UserModel for authentication and profile data, CartItemModel for shopping cart items, and PaymentModel for payment processing.

**View**: Represents the UI screens including HomeScreen with product listings, ProductDetailsScreen for individual products, MyCartView for cart management, and AuthScreen for user authentication.

**ViewModel**: Acts as a bridge between Model and View including ProductViewModel for product data management, AuthViewModel for user authentication, CartViewModel for cart operations, and PaymentViewModel for payment processing.

### State Management
The app uses Provider and Bloc packages for comprehensive state management:

**Provider**: Used for global state management with AuthProvider for user authentication, ProductProvider for product data, CartProvider for cart state, and LocalizationProvider for language switching.

**Bloc**: Used for complex payment state management with StripePaymentCubit handling payment flow and states including Loading, Success, and Failure with error handling.

### Payment System
The app implements secure payment processing:

**Stripe Integration**: Credit card processing with PCI compliance, real-time validation, and 3D Secure authentication support with customizable payment forms.

**PayPal Integration**: Alternative payment method with sandbox and production modes, secure checkout flow with success/failure callbacks.

**Payment Flow**: Complete transaction process from cart to confirmation with secure processing and user feedback.

## UI Design
The UI design follows modern Material Design 3 principles with responsive layouts. The home screen displays products with clean visual hierarchy, shopping cart with intuitive management, and payment screens with secure form validation. Custom animations enhance user interaction while maintaining accessibility standards.
