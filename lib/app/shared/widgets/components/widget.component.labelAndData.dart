import 'package:covid_app/app/shared/widgets/texts/widget.text.label.dart';
import 'package:flutter/material.dart';

class WidgetComponentLabelAndData extends StatelessWidget {
  final String label, data;

  const WidgetComponentLabelAndData(this.label, this.data, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WidgetTextLabel('$label: '),
        Text(
          data,
          style: TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
