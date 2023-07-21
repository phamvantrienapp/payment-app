library app.features.products;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymetns_app/features/payments/payments.dart';
import 'package:paymetns_app/features/product_details/product_details.dart';
import 'package:paymetns_app/shared/common_skeleton_loading.dart';
import 'package:paymetns_app/utils/enums/loading_status.dart';
import 'package:paymetns_app/features/products/models/product.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'models/list_product.dart' as product;

part 'cubit/products_cubit.dart';
part 'cubit/products_state.dart';
part 'views/products_body.dart';
part 'views/products_page.dart';
part 'widgets/product_item.dart';
