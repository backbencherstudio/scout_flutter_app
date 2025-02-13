import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/theme_screen_provider.dart';

class ThemeTile extends StatelessWidget {
   ThemeTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,

  });

  final String imagePath;
  final String title;
  final VoidCallback onTap;
  int? selectedTheme;

  @override
  Widget build(BuildContext context) {
    final isSelected = context.read<ThemeScreenProvider>().isThemeSelected;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      elevation: 0,
      color: Color(0xFFF4F4F4),
      child: ListTile(
        onTap: onTap,
        leading: ImageIcon(
          AssetImage(imagePath),
          size: 24.r,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: selectedTheme ==  isSelected
            ? Icon(
                Icons.radio_button_checked_rounded,
                color: Color(0xFFFB6012),
              )
            : Icon(
                Icons.radio_button_off,
                color: Color(0xFF111315),
              ),
      ),
    );
  }
}
