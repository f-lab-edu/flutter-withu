import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';

class FindIdFailure extends StatelessWidget {
  const FindIdFailure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text(
          StringRes.noRegisteredAccount.tr,
          style: context.textTheme.headlineSmall,
        ),
      ),
    );
  }
}
