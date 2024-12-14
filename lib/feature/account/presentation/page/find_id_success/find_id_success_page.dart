import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';

class FindIdSuccess extends StatelessWidget {
  final String loginId;

  const FindIdSuccess({
    super.key,
    required this.loginId,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 65, 43, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringRes.memberYourId.tr,
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: loginId,
                    style: context.textTheme.headlineMedium,
                  ),
                  TextSpan(
                    text: " ${StringRes.itIs.tr}",
                    style: context.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
