part of app.features.payments;

class PaymentsState extends Equatable {
  final LoadingStatus loadingStatus;
  final PaymentConfigurationsModel? paymentConfiguration;
  final List<PaymentItem> paymentItems;
  final String error;

  const PaymentsState({
    this.loadingStatus = LoadingStatus.init,
    this.paymentConfiguration,
    this.paymentItems = const [],
    this.error = '',
  });

  PaymentsState copyWith({
    LoadingStatus? loadingStatus,
    PaymentConfigurationsModel? paymentConfiguration,
    List<PaymentItem>? paymentItems,
    String? error,
  }) {
    return PaymentsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      paymentConfiguration: paymentConfiguration ?? this.paymentConfiguration,
      paymentItems: paymentItems ?? this.paymentItems,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      loadingStatus,
      paymentConfiguration,
      paymentItems,
      error,
    ];
  }
}
