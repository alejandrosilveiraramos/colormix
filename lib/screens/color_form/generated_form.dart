import 'package:colormix/screens/color_form/form_keys_constants.dart';
import 'package:colormix/screens/home/components/button_card.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GeneratedForm extends StatefulWidget {
  final FormGroup form;

  const GeneratedForm({
    Key? key,
    required this.form,
  }) : super(key: key);

  @override
  State<GeneratedForm> createState() => _GeneratedFormState();
}

class _GeneratedFormState extends State<GeneratedForm> {
  late final int numberOfFields = int.parse(
      widget.form.control(FormColorsKeys.colors.numberOfColorsFields).value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composition of color'),
      ),
      body: ListView.builder(
        itemCount: numberOfFields,
        itemBuilder: (context, index) {
          return _buildFormGroup(index);
        },
      ),
    );
  }

  Widget _buildFormGroup(int index) {
    final form = FormGroup({
      'colorName$index': FormControl<String>(
        validators: [Validators.required],
      ),
      'colorPercent$index': FormControl<String>(
        validators: [Validators.required],
      ),
    });

    return ReactiveForm(
      formGroup: form,
      child: Container(
        color: DefaultTheme.colors.lightGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: DefaultTheme.spacing.large,
                vertical: DefaultTheme.spacing.xlarge,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Color ${index + 1}',
                    style: TextStyle(
                      fontWeight: DefaultTheme.fontWeight.bold,
                      fontSize: DefaultTheme.fontSize.title,
                    ),
                  ),
                  Column(
                    children: [
                      ReactiveTextField(
                        formControlName: 'colorName$index',
                        decoration: const InputDecoration(
                          labelText: 'Color Name',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'colorPercent$index',
                        decoration: const InputDecoration(
                          labelText: 'Color Percent',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: DefaultTheme.colors.secondary,
              thickness: 2,
            ),
            if (numberOfFields == (index + 1))
              Padding(
                padding: EdgeInsets.all(DefaultTheme.spacing.large),
                child: ReactiveFormConsumer(
                  builder: (context, form, child) {
                    return ButtonCard(
                      iconSize: 20,
                      icon: Icons.done_rounded,
                      clickAction: form.valid ? () {} : null,
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
