import 'package:colormix/screens/home/base_screen.dart';
import 'package:colormix/screens/home/components/button_card.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_bottom_tab_bar.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_page.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GenerateColorForm extends StatefulWidget {
  final FormGroup form;
  const GenerateColorForm({
    super.key,
    required this.form,
  });

  @override
  State<GenerateColorForm> createState() => _GenerateColorFormState();
}

class _GenerateColorFormState extends State<GenerateColorForm> {
  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: widget.form,
      child: ColormixPage(
        bottomNavigationBar: const ColormixBottomTabBar(),
        child: BaseScreen(
          child: SingleChildScrollView(
            child: ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                return Column(
                  children: [
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
                            clickAction: widget.form.valid ? () {} : null,
                            disabled: !widget.form.valid,
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
