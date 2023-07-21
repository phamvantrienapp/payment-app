part of app.features.home;

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductsPage();
    // return Stack(
    //   children: [
    //     SizedBox(
    //       width: double.infinity,
    //       height: double.infinity,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const SizedBox(height: 380.0),
    //           const SizedBox(height: 25.0),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 22.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 const Text(
    //                   'Transactions',
    //                   style: TextStyle(
    //                     fontSize: 26.0,
    //                     fontWeight: FontWeight.w600,
    //                   ),
    //                 ),
    //                 MaterialButton(
    //                   onPressed: () {},
    //                   shape: OutlineInputBorder(
    //                     borderRadius: BorderRadius.circular(30.0),
    //                   ),
    //                   color: const Color(0xFF000000),
    //                   child: const Text(
    //                     'Today',
    //                     style: TextStyle(
    //                       fontSize: 16.0,
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.w400,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           const SizedBox(height: 15.0),
    //           Expanded(
    //             child: ListView.builder(
    //               itemCount: 10,
    //               padding: EdgeInsets.zero,
    //               itemBuilder: (context, index) {
    //                 return ListTile(
    //                   contentPadding: const EdgeInsets.symmetric(
    //                     horizontal: 22.0,
    //                   ),
    //                   leading: const Icon(
    //                     Icons.attach_money,
    //                     size: 40.0,
    //                     color: Colors.green,
    //                   ),
    //                   title: const Text(
    //                     '100.000 Dollars',
    //                     style: TextStyle(
    //                       fontSize: 18.0,
    //                       color: Colors.red,
    //                       fontWeight: FontWeight.w500,
    //                     ),
    //                   ),
    //                   subtitle: const Text('Waiting for payments'),
    //                   trailing: MaterialButton(
    //                     onPressed: () {
    //                       Navigator.push(
    //                         context,
    //                         MaterialPageRoute<void>(
    //                           builder: (BuildContext context) {
    //                             return const PaymentsPage();
    //                           },
    //                         ),
    //                       );
    //                     },
    //                     shape: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(30.0),
    //                     ),
    //                     child: const Text(
    //                       'Pay',
    //                       style: TextStyle(
    //                         fontSize: 16.0,
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                   ),
    //                 );
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     DecoratedBox(
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage(
    //             'assets/images/background.png',
    //           ),
    //           fit: BoxFit.cover,
    //         ),
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(50.0),
    //           bottomRight: Radius.circular(50.0),
    //         ),
    //       ),
    //       child: SizedBox(
    //         height: 380.0,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             const SizedBox(height: 30.0),
    //             const Column(
    //               children: [
    //                 Text(
    //                   'General balance',
    //                   style: TextStyle(
    //                     fontSize: 18.0,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),
    //                 SizedBox(height: 5.0),
    //                 Text(
    //                   '1,286.00',
    //                   style: TextStyle(
    //                     fontSize: 44.0,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 vertical: 22.0,
    //                 horizontal: 22.0,
    //               ),
    //               child: SizedBox(
    //                 height: 55.0,
    //                 child: DecoratedBox(
    //                   decoration: BoxDecoration(
    //                     color: const Color(0xFF515558),
    //                     borderRadius: BorderRadius.circular(30.0),
    //                   ),
    //                   child: const Padding(
    //                     padding: EdgeInsets.symmetric(horizontal: 5.0),
    //                     child: Row(
    //                       children: [
    //                         Expanded(child: CurrencyButton(selected: true)),
    //                         Expanded(child: CurrencyButton()),
    //                         Expanded(child: CurrencyButton()),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}

class CurrencyButton extends StatelessWidget {
  final bool selected;

  const CurrencyButton({
    super.key,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? const Color(0xFFE5F240) : Colors.transparent;
    final textColor = selected ? Colors.black : Colors.white;

    return SizedBox(
      height: 45.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            'Dollars',
            style: TextStyle(
              fontSize: 16.0,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
