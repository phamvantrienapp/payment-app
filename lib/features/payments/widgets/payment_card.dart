part of app.features.payments;

class PaymentCard extends StatelessWidget {
  final String total;

  const PaymentCard({
    super.key,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/background.png',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 250.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Thành tiền',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              '$total đ',
              style: const TextStyle(
                fontSize: 44.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
