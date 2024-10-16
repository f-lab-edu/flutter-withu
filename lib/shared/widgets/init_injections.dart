import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/widgets/page_root/bloc/loading_bloc.dart';

initSharedWidgetInjections() {
  getIt.registerSingleton<LoadingBloc>(LoadingBloc());
}
