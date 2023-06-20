import 'package:colormix/screens/color_form/generate_color_form.dart';
import 'package:colormix/screens/home/base_screen.dart';
import 'package:colormix/screens/home/components/button_card.dart';
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
      FormColor.color: FormControl<String>(
        validators: [Validators.required],
        value: '',
      ),
      FormColor.name: FormControl<String>(
        validators: [Validators.required],
        value: '',
      ),
      FormColor.code: FormControl<String>(
        validators: [Validators.required],
        value: '',
      ),
      FormColor.description: FormControl<String>(
        validators: [Validators.required],
        value: '',
      ),
      FormColor.numberOfColors: FormControl<String>(
        validators: [Validators.required],
        value: '',
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: ColormixPage(
        bottomNavigationBar: const ColormixBottomTabBar(),
        child: BaseScreen(
          child: SingleChildScrollView(
            child: ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                return Column(
                  children: [
                    ...form.controls.entries.map((entry) {
                      final key = entry.key;
                      final control = entry.value as FormControl<String>;

                      return Padding(
                        padding: EdgeInsets.all(DefaultTheme.spacing.normal),
                        child: ReactiveTextField<String>(
                          formControl: control,
                          decoration: InputDecoration(
                            labelText: key,
                          ),
                        ),
                      );
                    }).toList(),
                    SizedBox(
                      height: DefaultTheme.spacing.xxlarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: DefaultTheme.spacing.normal),
                          child: ButtonCard(
                            icon: Icons.done,
                            clickAction: form.valid
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => GenerateColorForm(
                                          form: form,
                                        ),
                                      ),
                                    );
                                  }
                                : null,
                            disabled: !form.valid,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FormColor {
  static const color = 'Color';
  static const name = 'Name';
  static const code = 'Code';
  static const description = 'Description';
  static const numberOfColors = 'Number of colors';
}
