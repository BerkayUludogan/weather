import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import 'package:weather_app/product/environment/dev_env.dart';

final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  ProductNetworkManager.base()
      : super(options: BaseOptions(baseUrl: DevEnv().baseUrl));
}

void listenErrorState({required ValueChanged<int> onErrorStatus}) {
  Interceptors().add(
    InterceptorsWrapper(
      onError: (e, handler) {
        onErrorStatus(e.response?.statusCode ?? HttpStatus.notFound);
        return handler.next(e);
      },
    ),
  );
}
