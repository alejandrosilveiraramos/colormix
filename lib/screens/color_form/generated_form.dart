import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GeneratedForm extends StatefulWidget {
  final int numberOfFields;

  const GeneratedForm({Key? key, required this.numberOfFields})
      : super(key: key);

  @override
  State<GeneratedForm> createState() => _GeneratedFormState();
}

class _GeneratedFormState extends State<GeneratedForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composition of color'),
      ),
      body: ListView.builder(
        itemCount: widget.numberOfFields,
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

    return Column(
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
              ReactiveForm(
                formGroup: form,
                child: Column(
                  children: [
                    ReactiveTextField<String>(
                      formControlName: 'colorName$index',
                      decoration: const InputDecoration(
                        labelText: 'Color Name',
                      ),
                    ),
                    ReactiveTextField<String>(
                      formControlName: 'colorPercent$index',
                      decoration: const InputDecoration(
                        labelText: 'Color Percent',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: DefaultTheme.colors.secondary,
          thickness: 2,
        ),
      ],
    );
  }
}
