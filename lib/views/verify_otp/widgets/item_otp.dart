import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemOtp extends StatelessWidget {
  const ItemOtp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      style:  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700,),
      maxLength: 1,
      inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(160),
          borderSide: BorderSide(
            color: Color(0xffE5E73B),
          ),
        ),
      ),),
    );

  }
}
