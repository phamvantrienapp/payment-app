part of app.features.payments;

@injectable
class PaymentsCubit extends Cubit<PaymentsState> {
  PaymentsCubit() : super(const PaymentsState());

  final defaultApplePayJson = {
    "provider": "apple_pay",
    "data": {
      "merchantIdentifier": "merchant.com.sams.fish",
      "displayName": "Sam's Fish",
      "merchantCapabilities": ["3DS", "debit", "credit"],
      "supportedNetworks": ["amex", "visa", "discover", "masterCard"],
      "countryCode": "VI",
      "currencyCode": "VND",
      "requiredBillingContactFields": [
        "emailAddress",
        "name",
        "phoneNumber",
        "postalAddress"
      ],
      "requiredShippingContactFields": [],
      "shippingMethods": [
        {
          "amount": "0.00",
          "detail": "Available within an hour",
          "identifier": "in_store_pickup",
          "label": "In-Store Pickup"
        },
        {
          "amount": "4.99",
          "detail": "5-8 Business Days",
          "identifier": "flat_rate_shipping_id_2",
          "label": "UPS Ground"
        },
        {
          "amount": "29.99",
          "detail": "1-3 Business Days",
          "identifier": "flat_rate_shipping_id_1",
          "label": "FedEx Priority Mail"
        }
      ]
    }
  };

  void intl(String amount) {
    try {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.loading,
      ));

      final paymentConfiguration = PaymentConfigurationsModel.fromJson(
        defaultApplePayJson,
      );

      final paymentItems = [
        PaymentItem(
          label: 'Total',
          amount: amount,
          status: PaymentItemStatus.pending,
        )
      ];

      emit(state.copyWith(
        loadingStatus: LoadingStatus.loadingSuccess,
        paymentConfiguration: paymentConfiguration,
        paymentItems: paymentItems,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.loadingError,
        error: e.toString(),
      ));
    }
  }
}
