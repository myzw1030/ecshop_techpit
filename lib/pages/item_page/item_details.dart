import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({super.key});

  List<String> optionsList = [
    '24',
    '25',
    '26',
    '27',
    '28',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.elliptical(90, 5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _ItemName(name: 'Item Name'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: _ItemDescription(description: 'Item Description'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: _ItemPrice(price: '12,800yen'),
              ),
              _AddToCart(options: optionsList),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemName extends StatelessWidget {
  const _ItemName({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _ItemDescription extends StatelessWidget {
  const _ItemDescription({required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 14,
      ),
    );
  }
}

class _ItemPrice extends StatelessWidget {
  const _ItemPrice({required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _AddToCart extends StatefulWidget {
  final List<String> options;
  const _AddToCart({required this.options});

  @override
  State<_AddToCart> createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Options',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(
          spacing: 8,
          children: widget.options
              .map(
                (op) => (op == selectedOption)
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() => selectedOption = op);
                        },
                        child: Text(
                          op,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : OutlinedButton(
                        onPressed: () {
                          setState(() => selectedOption = op);
                        },
                        child: Text(op),
                      ),
              )
              .toList(),
        ),
        Center(
          child: ElevatedButton(
            onPressed: (selectedOption.isEmpty) ? null : () => {},
            child: const Text('Add to Cart'),
          ),
        )
      ],
    );
  }
}
