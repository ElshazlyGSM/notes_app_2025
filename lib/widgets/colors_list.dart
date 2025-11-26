import 'package:flutter/material.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  final List<Color> colorsList = [
    Color(0xFF2A9D8F),
    Color(0xFF264653),
    Color(0xFFE9C46A),
    Color(0xFFFFC107),
    Color(0xFFF4A261),
    Color(0xFFE76F51),
    Color(0xFF6D597A),
    Color(0xFFB56576),
    Color(0xFFE56B6F),
    Color(0xFF355020),
    Color(0xFFBFD7EA),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: ColorItem(
              backgroundColor: colorsList[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.backgroundColor,
    required this.isSelected,
  });

  final Color backgroundColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 35,
              child: CircleAvatar(backgroundColor: backgroundColor, radius: 32),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: CircleAvatar(backgroundColor: backgroundColor, radius: 32),
          );
  }
}
