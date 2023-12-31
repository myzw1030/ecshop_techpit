import 'package:ecshop_techpit/model/data/login_user/login_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginUserProvider = Provider(
  (_) => LoginUser(id: 'abcd1234', name: 'Taro'),
);

final loginUserNameProvider = Provider(
  (ref) => ref.watch(loginUserProvider.select((user) => user.name)),
);
