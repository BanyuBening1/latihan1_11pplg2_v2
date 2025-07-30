import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final String? selectedGender;
  final Function(String?) onChanged;

  const Gender({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGender,
      items: const [
        DropdownMenuItem(value: 'Laki-laki', child: Text('Laki-laki')),
        DropdownMenuItem(value: 'Perempuan', child: Text('Perempuan')),
      ],
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: 'Gender',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }
}
