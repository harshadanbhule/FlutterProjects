import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final void Function(bool? val) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onChanged(!value),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 22, 22, 22), // Border color
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white, // Inner color of the box
            ),
            width: 24,
            height: 24,
            child: value
                ? const Icon(
                    CupertinoIcons.checkmark_alt,
                    size: 20,
                    color: Color.fromRGBO(103, 89, 255, 1),
                  )
                : null,
          ),
        ),
        const SizedBox(width: 8),
        const Text("Remember me"),
      ],
    );
  }
}
