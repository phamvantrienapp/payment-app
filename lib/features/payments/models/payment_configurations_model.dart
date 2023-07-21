class PaymentConfigurationsModel {
  final String? provider;
  final PaymentConfigurationsData? data;

  PaymentConfigurationsModel({
    this.provider,
    this.data,
  });

  factory PaymentConfigurationsModel.fromJson(Map<String, dynamic> json) {
    return PaymentConfigurationsModel(
      provider: json['provider'] as String,
      data: PaymentConfigurationsData.fromJson(json['data'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'provider': provider,
      'data': data,
    };
  }
}

class PaymentConfigurationsData {
  final String? merchantIdentifier;
  final String? displayName;
  final List<String>? merchantCapabilities;
  final List<String>? supportedNetworks;
  final String? countryCode;
  final String? currencyCode;
  final List<String>? requiredBillingContactFields;
  final List? requiredShippingContactFields;
  final List<ShippingMethods>? shippingMethods;

  /// Google Pay
  final String? environment;
  final int? apiVersion;
  final int? apiVersionMinor;
  final List<AllowedPaymentMethods>? allowedPaymentMethods;
  final MerchantInfo? merchantInfo;
  final TransactionInfo? transactionInfo;

  PaymentConfigurationsData({
    this.merchantIdentifier,
    this.displayName,
    this.merchantCapabilities,
    this.supportedNetworks,
    this.countryCode,
    this.currencyCode,
    this.requiredBillingContactFields,
    this.requiredShippingContactFields,
    this.shippingMethods,

    /// Google Pay
    this.environment,
    this.apiVersion,
    this.apiVersionMinor,
    this.allowedPaymentMethods,
    this.merchantInfo,
    this.transactionInfo,
  });

  factory PaymentConfigurationsData.fromJson(Map<String, dynamic> json) {
    List<ShippingMethods> shippingMethods = [];
    if (json['shippingMethods'] != null) {
      json['shippingMethods'].forEach((shippingMethod) {
        shippingMethods.add(ShippingMethods.fromJson(shippingMethod));
      });
    }

    return PaymentConfigurationsData(
      merchantIdentifier: json['merchantIdentifier'] as String?,
      displayName: json['displayName'] as String?,
      merchantCapabilities: List<String>.from(json['merchantCapabilities']),
      supportedNetworks: List<String>.from(json['supportedNetworks']),
      countryCode: json['countryCode'] as String?,
      currencyCode: json['currencyCode'] as String?,
      requiredBillingContactFields:
          List<String>.from(json['requiredBillingContactFields']),
      requiredShippingContactFields:
          List<String>.from(json['requiredShippingContactFields']),
      shippingMethods: shippingMethods,

      /// Google Pay
      environment: json['environment'] as String?,
      apiVersion: json['apiVersion'] as int?,
      apiVersionMinor: json['apiVersionMinor'] as int?,
      allowedPaymentMethods:
          json['allowedPaymentMethods'] as List<AllowedPaymentMethods>?,
      merchantInfo: json['merchantInfo'] as MerchantInfo?,
      transactionInfo: json['transactionInfo'] as TransactionInfo?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'merchantIdentifier': merchantIdentifier,
      'displayName': displayName,
      'merchantCapabilities': merchantCapabilities,
      'supportedNetworks': supportedNetworks,
      'countryCode': countryCode,
      'currencyCode': currencyCode,
      'requiredBillingContactFields': requiredBillingContactFields,
      'requiredShippingContactFields': requiredShippingContactFields,
      'shippingMethods': shippingMethods,

      /// Google Pay
      'environment': environment,
      'apiVersion': apiVersion,
      'apiVersionMinor': apiVersionMinor,
      'allowedPaymentMethods': allowedPaymentMethods,
      'merchantInfo': merchantInfo,
      'transactionInfo': transactionInfo,
    };
  }
}

class MerchantInfo {
  final String? merchantId;
  final String? merchantName;

  MerchantInfo({
    this.merchantId,
    this.merchantName,
  });

  factory MerchantInfo.fromJson(Map<String, dynamic> json) {
    return MerchantInfo(
      merchantId: json['merchantId'] as String,
      merchantName: json['merchantName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'merchantId': merchantId,
      'merchantName': merchantName,
    };
  }
}

class TransactionInfo {
  final String? countryCode;
  final String? currencyCode;

  TransactionInfo({
    this.countryCode,
    this.currencyCode,
  });

  factory TransactionInfo.fromJson(Map<String, dynamic> json) {
    return TransactionInfo(
      countryCode: json['countryCode'] as String,
      currencyCode: json['currencyCode'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCode': countryCode,
      'merchantName': currencyCode,
    };
  }
}

class ShippingMethods {
  final String? amount;
  final String? detail;
  final String? identifier;
  final String? label;

  ShippingMethods({
    this.amount,
    this.detail,
    this.identifier,
    this.label,
  });

  factory ShippingMethods.fromJson(Map<String, dynamic> json) {
    return ShippingMethods(
      amount: json['amount'] as String,
      detail: json['detail'] as String,
      identifier: json['identifier'] as String,
      label: json['label'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'detail': detail,
      'identifier': identifier,
      'label': label,
    };
  }
}

class AllowedPaymentMethods {
  final String? type;
  final TokenizationSpecification? tokenizationSpecification;
  final Parameters? parameters;

  AllowedPaymentMethods({
    this.type,
    this.tokenizationSpecification,
    this.parameters,
  });

  factory AllowedPaymentMethods.fromJson(Map<String, dynamic> json) {
    return AllowedPaymentMethods(
      type: json['type'] as String,
      tokenizationSpecification:
          json['tokenizationSpecification'] as TokenizationSpecification,
      parameters: json['parameters'] as Parameters,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'tokenizationSpecification': tokenizationSpecification,
      'parameters': parameters,
    };
  }
}

class Parameters {
  final List<String>? allowedCardNetworks;
  final List<String>? allowedAuthMethods;
  final bool? billingAddressRequired;
  final BillingAddressParameters? billingAddressParameters;

  Parameters({
    this.allowedCardNetworks,
    this.allowedAuthMethods,
    this.billingAddressRequired,
    this.billingAddressParameters,
  });

  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      allowedCardNetworks: json['allowedCardNetworks'] as List<String>,
      allowedAuthMethods: json['allowedAuthMethods'] as List<String>,
      billingAddressRequired: json['billingAddressRequired'] as bool,
      billingAddressParameters:
          json['billingAddressParameters'] as BillingAddressParameters,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'allowedCardNetworks': allowedCardNetworks,
      'allowedAuthMethods': allowedAuthMethods,
      'billingAddressRequired': billingAddressRequired,
      'billingAddressParameters': billingAddressParameters,
    };
  }
}

class BillingAddressParameters {
  final String? format;
  final bool? phoneNumberRequired;

  BillingAddressParameters({
    this.format,
    this.phoneNumberRequired,
  });

  factory BillingAddressParameters.fromJson(Map<String, dynamic> json) {
    return BillingAddressParameters(
      format: json['format'] as String,
      phoneNumberRequired: json['phoneNumberRequired'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'format': format,
      'phoneNumberRequired': phoneNumberRequired,
    };
  }
}

class TokenizationSpecification {
  final String? type;
  final TokenizationSpecificationParameters? parameters;

  TokenizationSpecification({
    this.type,
    this.parameters,
  });

  factory TokenizationSpecification.fromJson(Map<String, dynamic> json) {
    return TokenizationSpecification(
      type: json['type'] as String,
      parameters: json['parameters'] as TokenizationSpecificationParameters,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'parameters': parameters,
    };
  }
}

class TokenizationSpecificationParameters {
  final String? gateway;
  final String? gatewayMerchantId;

  TokenizationSpecificationParameters({
    this.gateway,
    this.gatewayMerchantId,
  });

  factory TokenizationSpecificationParameters.fromJson(
      Map<String, dynamic> json) {
    return TokenizationSpecificationParameters(
      gateway: json['gateway'] as String,
      gatewayMerchantId: json['gatewayMerchantId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gateway': gateway,
      'gatewayMerchantId': gatewayMerchantId,
    };
  }
}
