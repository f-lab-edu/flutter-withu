import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';

import '../find_id/find_id_page_key.dart';

class FindIdFailure extends StatelessWidget {
  FindIdFailure() : super(key: FindIdPageKey.failurePage.toKey());

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
