import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/gen/colors.gen.dart';

/// User 프로필 아이템
class UserProfile extends StatelessWidget {
  /// 프로필 이미지 URL
  final String profile;

  /// 이름
  final String name;

  /// 나이
  final int age;

  const UserProfile({
    super.key,
    required this.profile,
    required this.name,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProfileImage(
          src: profile,
        ),
        const SizedBox(width: 6),
        _UserInfo(
          name: name,
          age: age,
        ),
      ],
    );
  }
}

/// 프로필 이미지
class _ProfileImage extends StatelessWidget {
  final String src;

  const _ProfileImage({
    required this.src,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: ColorName.teritary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.network(
          src,
          errorBuilder: (
            BuildContext context,
            Object error,
            StackTrace? stackTrace,
          ) {
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

/// 유저 정보
class _UserInfo extends StatelessWidget {
  final String name;

  final int age;

  const _UserInfo({
    required this.name,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Text(
            name,
            style: context.textTheme.bodyMediumBold,
          ),
          const SizedBox(width: 1),
          Text(
            '$age${StringRes.yearsOld.tr}',
            style: context.textTheme.bodySmall,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
