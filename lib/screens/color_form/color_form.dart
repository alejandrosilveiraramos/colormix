import 'package:colormix/screens/color_form/form_keys_constants.dart';
import 'package:colormix/screens/color_form/generated_form.dart';
import 'package:colormix/screens/home/base_screen.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_bottom_tab_bar.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_page.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ColorForm extends StatefulWidget {
  const ColorForm({Key? key}) : super(key: key);

  @override
  State<ColorForm> createState() => _ColorFormState();
}

class _ColorFormState extends State<ColorForm> {
  final form = FormGroup(
    {
      FormColorsKeys.colors.form: FormGroup(
        {
          FormColorsKeys.colors.color: FormControl<String>(
            validators: [Validators.required],
            value: '',
          ),
          FormColorsKeys.colors.name: FormControl<String>(
            validators: [Validators.required],
            value: '',
          ),
          FormColorsKeys.colors.code: FormControl<String>(
            validators: [Validators.required],
            value: '',
          ),
          FormColorsKeys.colors.description: FormControl<String>(
            validators: [Validators.required],
            value: '',
          ),
          FormColorsKeys.colors.numberOfColorsFields: FormControl<String>(
            validators: [Validators.required],
            value: '',
          ),
        },
      ),
      FormColorsKeys.colorsComposition.form: FormGroup(
        {
          FormColorsKeys.colorsComposition.colorsFields:
              FormArray<FormGroup>([]),
        },
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    late final FormGroup colorForm =
        form.control(FormColorsKeys.colors.form) as FormGroup;

    return ReactiveForm(
      formGroup: colorForm,
      child: ColormixPage(
        bottomNavigationBar: const ColormixBottomTabBar(),
        child: BaseScreen(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(DefaultTheme.spacing.normal),
                  child: Column(
                    children: [
                      ReactiveTextField(
                        formControlName: FormColorsKeys.colors.color,
                        decoration: const InputDecoration(
                          labelText: 'Color',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: FormColorsKeys.colors.name,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: FormColorsKeys.colors.code,
                        decoration: const InputDecoration(
                          labelText: 'Code',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: FormColorsKeys.colors.description,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName:
                            FormColorsKeys.colors.numberOfColorsFields,
                        decoration: const InputDecoration(
                          labelText: 'Number of colors',
                        ),
                      ),
                      ReactiveFormConsumer(
                        builder: (context, form, child) {
                          return ElevatedButton(
                            onPressed: form.valid
                                ? () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return GeneratedForm(
                                          numberOfFields: int.parse(
                                            colorForm
                                                .control(FormColorsKeys.colors
                                                    .numberOfColorsFields)
                                                .value,
                                          ),
                                        );
                                      },
                                    );
                                  }
                                : null, // Disable the button if the form is invalid
                            child: const Text('Next'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
