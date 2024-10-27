import 'package:choice/choice.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';

class Choise {
  int id;
  String? selectedValue;
  String label;
  List<dynamic> choices;
  final String? bottomSwichtText;

  Choise({
    required this.id,
    required this.choices,
    required this.label,
    required this.selectedValue,
    this.bottomSwichtText,
  });
}

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    required this.item,
    required this.setSelectedValue,
    super.key,
  });

  final Choise item;
  final void Function(String?, int) setSelectedValue;

  @override
  Widget build(BuildContext context) {
    return PromptedChoice<String>.single(
      clearable: true,
      searchable: true,
      value: item.selectedValue,
      onChanged: (val) => setSelectedValue(val, item.id),
      itemCount: item.choices.length,
      leadingBuilder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item.label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        );
      },
      itemBuilder: (state, i) {
        return RadioListTile(
          value: item.choices[i],
          groupValue: state.single,
          onChanged: (value) {
            state.select(item.choices[i]);
          },
          title: ChoiceText(
            item.choices[i],
            highlight: state.search?.value,
          ),
        );
      },
      promptDelegate: ChoicePrompt.delegatePopupDialog(
        maxHeightFactor: .5,
        constraints: const BoxConstraints(maxWidth: 300),
      ),
      anchorBuilder: (contexts, selected) {
        return InkWell(
          onTap: selected,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromRGBO(223, 234, 242, 1),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(
                  item.selectedValue ??
                      LocaleKeys
                          .access_price_user_dashboard_screen_chose_in_list
                          .tr(),
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(113, 142, 191, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color.fromRGBO(113, 142, 191, 1),
                  size: 18,
                ),
              ],
            ),
          ),
        );
      },
      listBuilder:
          ChoiceList.createVirtualized(padding: const EdgeInsets.all(20)),
    );
  }
}
