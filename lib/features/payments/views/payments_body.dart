part of app.features.payments;

class PaymentsBody extends StatefulWidget {
  const PaymentsBody({super.key});

  @override
  State<PaymentsBody> createState() => _PaymentsBodyState();
}

class _PaymentsBodyState extends State<PaymentsBody> {
  late final Future<PaymentConfiguration> _googlePayConfigFuture;

  @override
  void initState() {
    super.initState();
    _googlePayConfigFuture = PaymentConfiguration.fromAsset(
      'default_google_pay_config.json',
    );
  }

  void onGooglePayResult(paymentResult) {
    context.showSuccessMessage(message: 'Thanh toán thành công!');
    debugPrint(paymentResult.toString());
    Navigator.pop(context);
  }

  void onApplePayResult(paymentResult) {
    context.showSuccessMessage(message: 'Thanh toán thất bại!');
    debugPrint(paymentResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          Builder(
            builder: (context) {
              final amount = context.select<PaymentsCubit, String>(
                (value) => value.state.paymentItems.first.amount,
              );
              return PaymentCard(total: amount);
            },
          ),
          const SizedBox(height: 15.0),
          const Text(
            'Chọn phương thức thanh toán',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          // Example pay button configured using an asset
          FutureBuilder<PaymentConfiguration>(
            future: _googlePayConfigFuture,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const SizedBox.shrink();
              }

              if (snapshot.hasError) {
                final error = snapshot.error.toString();
                context.showErorrMessage(message: error);
              }

              final items = context.select<PaymentsCubit, List<PaymentItem>>(
                (cubit) => cubit.state.paymentItems,
              );

              return GooglePayButton(
                paymentConfiguration: snapshot.data!,
                paymentItems: items,
                type: GooglePayButtonType.pay,
                margin: const EdgeInsets.only(top: 15.0),
                onPaymentResult: onGooglePayResult,
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
                onError: (value) {
                  context.showErorrMessage(message: 'Error');
                },
              );
            },
          ),
          // Example pay button configured using a string
          Builder(
            builder: (context) {
              final paymentItems =
                  context.select<PaymentsCubit, List<PaymentItem>>(
                (cubit) => cubit.state.paymentItems,
              );

              return ApplePayButton(
                paymentConfiguration: PaymentConfiguration.fromJsonString(
                  payment_configurations.defaultApplePay,
                ),
                paymentItems: paymentItems,
                type: ApplePayButtonType.checkout,
                style: ApplePayButtonStyle.black,
                margin: const EdgeInsets.only(top: 15.0),
                onPaymentResult: onApplePayResult,
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}
