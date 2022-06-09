import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/common_widgets/textfield_widget.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class ApplyReimbursementsPage extends StatelessWidget {
  ApplyReimbursementsPage({Key? key}) : super(key: key);

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height / 1.05,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                padding: const EdgeInsets.only(bottom: 70),
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          width: 120,
                          child: Divider(
                            color: DividerColors.primaryGrey,
                            thickness: 4,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Request Approval', style: AppFonts.largeTextBB),
                      const SizedBox(
                        height: 30,
                      ),
                      Text('Title', style: AppFonts.mediumTextBB),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFieldWidget(
                        maxLines: 1,
                        textController: _titleController,
                        hintText: 'Ex: Stationary - Makers',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Description', style: AppFonts.mediumTextBB),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFieldWidget(
                          maxLines: 8,
                          hintText: 'Enter Description',
                          textController: _descriptionController),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Estimated Cost', style: AppFonts.mediumTextBB),
                      const SizedBox(
                        height: 9,
                      ),
                      EstimatedCostWidget(costController: _costController),
                      // const SizedBox(
                      //   height: 40,
                      // ),
                    ],
                  ),
                ],
              ),
              NavigationButton(
                  buttonColor: ButtonColors.nextButton,
                  text: 'Submit',
                  buttonTextStyle: AppFonts.buttonTextWR.copyWith(
                      fontWeight: FontWeight.bold,
                      color: TextColors.appHeaderBlack)),
            ],
          ),
        ));
  }
}

class EstimatedCostWidget extends StatelessWidget {
  const EstimatedCostWidget({
    Key? key,
    required TextEditingController costController,
  })  : _costController = costController,
        super(key: key);

  final TextEditingController _costController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: ContainerColors.secondaryTextField.withOpacity(0.09),
        border: Border.all(color: BorderColor.borderprimarygrey, width: 1.5),
        borderRadius: BorderRadii.radius8px,
      ),
      child: TextFormField(
        controller: _costController,
        style: AppFonts.smallText12.copyWith(
          fontSize: 16,
          color: TextColors.secondaryColor,
        ),
        keyboardType: TextInputType.number,
        maxLines: 1,
        maxLength: 14,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.only(top: 2, left: 0),
          prefixIcon: IconTheme(
            data: IconThemeData(color: IconColors.secondaryColor),
            child: const Icon(
              Icons.currency_rupee,
              size: 16,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
