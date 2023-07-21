library app.features.payments;

import 'package:pay/pay.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymetns_app/features/products/models/product.dart';
import 'package:paymetns_app/shared/common_scaffold.dart';
import 'package:paymetns_app/utils/enums/loading_status.dart';
import 'package:paymetns_app/modules/dependency_injection/di.dart';
import 'package:paymetns_app/utils/_base/build_context_extention.dart';
import 'package:paymetns_app/features/payments/models/payment_configurations_model.dart';

import 'models/payment_configurations.dart' as payment_configurations;

part 'cubit/payments_cubit.dart';
part 'cubit/payments_state.dart';
part 'views/payments_body.dart';
part 'views/payments_page.dart';
part 'widgets/payment_card.dart';
