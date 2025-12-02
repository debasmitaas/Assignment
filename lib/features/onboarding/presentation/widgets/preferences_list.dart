import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreferencesList extends StatefulWidget {
  final List<String> items;

  const PreferencesList({required this.items, super.key});

  @override
  State<PreferencesList> createState() => _PreferencesListState();
}

class _PreferencesListState extends State<PreferencesList> {
  final Set<String> _selected = {};

  void _toggleSelection(String item) {
    setState(() {
      _selected.contains(item) ? _selected.remove(item) : _selected.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.items
          .map((item) => _buildItem(context, item, _selected.contains(item)))
          .toList(),
    );
  }

  Widget _buildItem(BuildContext context, String item, bool isSelected) {
    return GestureDetector(
      onTap: () => _toggleSelection(item),
      child: Container(
        width: context.getResponsiveWidth(327),
        height: context.getResponsiveHeight(58),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.lightBlue : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.transparent : AppColor.lightGrey,
          ),
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? AppColor.darkBlue : Colors.black,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
            if (isSelected)
              const FaIcon(FontAwesomeIcons.check, color: AppColor.darkBlue, size: 12),
          ],
        ),
      ),
    );
  }
}