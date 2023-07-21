library app.features.product_details;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymetns_app/shared/common_button.dart';
import 'package:paymetns_app/shared/common_scaffold.dart';
import 'package:paymetns_app/features/payments/payments.dart';
import 'package:paymetns_app/shared/common_skeleton_loading.dart';
import 'package:paymetns_app/utils/enums/loading_status.dart';
import 'package:paymetns_app/features/products/models/product.dart';

part 'cubit/product_details_cubit.dart';
part 'cubit/product_details_state.dart';
part 'views/product_details_body.dart';
part 'views/product_details_page.dart';
