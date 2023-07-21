part of app.features.payments;

class PaymentsPage extends StatelessWidget {
  final Product product;

  const PaymentsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final paymentsCubit = getIt<PaymentsCubit>();
        paymentsCubit.intl(product.price ?? '');
        return paymentsCubit;
      },
      child: CommonScaffold(
        appBar: AppBar(
          title: const Text(
            'Payments',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: const PaymentsBody(),
      ),
    );
  }
}
