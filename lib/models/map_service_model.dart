class MapServiceModel {
  List<ServicePackages>? servicePackages;
  List<Data>? data;
  List<CommonServices>? commonServices;
  List<FeatureService>? featureServices;
  int? max;
  int? min;
  List<Userservices>? userservices;

  MapServiceModel({
    this.servicePackages,
    this.data,
    this.commonServices,
    this.featureServices,
    this.max,
    this.min,
    this.userservices,
  });

  MapServiceModel.fromJson(Map<String, dynamic> json) {
    if (json['service_packages'] != null) {
      servicePackages = <ServicePackages>[];
      json['service_packages'].forEach((v) {
        servicePackages!.add(ServicePackages.fromJson(v));
      });
    }
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    if (json['common_services'] != null) {
      commonServices = <CommonServices>[];
      json['common_services'].forEach((v) {
        commonServices!.add(CommonServices.fromJson(v));
      });
    }
    if (json['feature_services'] != null) {
      featureServices = <FeatureService>[];
      json['feature_services'].forEach((v) {
        featureServices!.add(FeatureService.fromJson(v));
      });
    }
    max = json['max'];
    min = json['min'];
    if (json['userservices'] != null) {
      userservices = <Userservices>[];
      json['userservices'].forEach((v) {
        userservices!.add(Userservices.fromJson(v));
      });
    }
  }
}

class ServicePackages {
  int? id;
  String? name;
  int? providerId;
  int? price;
  int? status;
  String? description;
  String? startDate;
  String? endDate;
  int? categoryId;
  int? subcategoryId;
  int? isFeatured;
  List<Services>? services;
  List<String>? attchments;
  List<AttchmentsArray>? attchmentsArray;
  String? categoryName;
  Null subcategoryName;
  String? packageType;

  ServicePackages({
    this.id,
    this.name,
    this.providerId,
    this.price,
    this.status,
    this.description,
    this.startDate,
    this.endDate,
    this.categoryId,
    this.subcategoryId,
    this.isFeatured,
    this.services,
    this.attchments,
    this.attchmentsArray,
    this.categoryName,
    this.subcategoryName,
    this.packageType,
  });

  ServicePackages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    providerId = json['provider_id'];
    price = json['price'];
    status = json['status'];
    description = json['description'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    isFeatured = json['is_featured'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
    attchments = json['attchments'].cast<String>();
    if (json['attchments_array'] != null) {
      attchmentsArray = <AttchmentsArray>[];
      json['attchments_array'].forEach((v) {
        attchmentsArray!.add(AttchmentsArray.fromJson(v));
      });
    }
    categoryName = json['category_name'];
    subcategoryName = json['subcategory_name'];
    packageType = json['package_type'];
  }
}

class Services {
  Null distance;
  int? id;
  String? name;
  int? categoryId;
  int? subcategoryId;
  int? providerId;
  int? price;
  String? priceFormat;
  String? type;
  int? discount;
  String? duration;
  int? status;
  String? description;
  int? isFeatured;
  String? providerName;
  String? providerImage;
  int? cityId;
  String? departmentName;
  String? categoryName;
  String? subcategoryName;
  List<String>? attchments;
  List<AttchmentsArray>? attchmentsArray;
  int? totalReview;
  int? totalRating;
  int? isFavourite;
  List<ServiceAddressMapping>? serviceAddressMapping;
  bool? attchmentExtension;
  Null deletedAt;
  int? isSlot;
  List<Slots>? slots;
  String? startDate;
  String? endDate;
  int? userServiceStatus;
  String? visitType;
  int? isEnableAdvancePayment;
  int? advancePaymentAmount;
  String? adminServiceType;
  List<Providers>? providers;
  int? serviceApprovalStatus;

  Services({
    this.distance,
    this.id,
    this.name,
    this.categoryId,
    this.subcategoryId,
    this.providerId,
    this.price,
    this.priceFormat,
    this.type,
    this.discount,
    this.duration,
    this.status,
    this.description,
    this.isFeatured,
    this.providerName,
    this.providerImage,
    this.cityId,
    this.departmentName,
    this.categoryName,
    this.subcategoryName,
    this.attchments,
    this.attchmentsArray,
    this.totalReview,
    this.totalRating,
    this.isFavourite,
    this.serviceAddressMapping,
    this.attchmentExtension,
    this.deletedAt,
    this.isSlot,
    this.slots,
    this.startDate,
    this.endDate,
    this.userServiceStatus,
    this.visitType,
    this.isEnableAdvancePayment,
    this.advancePaymentAmount,
    this.adminServiceType,
    this.providers,
    this.serviceApprovalStatus,
  });

  Services.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    providerId = json['provider_id'];
    price = json['price'];
    priceFormat = json['price_format'];
    type = json['type'];
    discount = json['discount'];
    duration = json['duration'];
    status = json['status'];
    description = json['description'];
    isFeatured = json['is_featured'];
    providerName = json['provider_name'];
    providerImage = json['provider_image'];
    cityId = json['city_id'];
    departmentName = json['department_name'];
    categoryName = json['category_name'];
    subcategoryName = json['subcategory_name'];
    attchments = json['attchments'].cast<String>();
    if (json['attchments_array'] != null) {
      attchmentsArray = <AttchmentsArray>[];
      json['attchments_array'].forEach((v) {
        attchmentsArray!.add(AttchmentsArray.fromJson(v));
      });
    }
    totalReview = json['total_review'];
    totalRating = json['total_rating'];
    isFavourite = json['is_favourite'];
    if (json['service_address_mapping'] != null) {
      serviceAddressMapping = <ServiceAddressMapping>[];
      json['service_address_mapping'].forEach((v) {
        serviceAddressMapping!.add(ServiceAddressMapping.fromJson(v));
      });
    }
    attchmentExtension = json['attchment_extension'];
    deletedAt = json['deleted_at'];
    isSlot = json['is_slot'];
    if (json['slots'] != null) {
      slots = <Slots>[];
      json['slots'].forEach((v) {
        slots!.add(Slots.fromJson(v));
      });
    }
    startDate = json['start_date'];
    endDate = json['end_date'];
    userServiceStatus = json['user_service_status'];
    visitType = json['visit_type'];
    isEnableAdvancePayment = json['is_enable_advance_payment'];
    advancePaymentAmount = json['advance_payment_amount'];
    adminServiceType = json['admin_service_type'];
    if (json['providers'] != null) {
      providers = <Providers>[];
      json['providers'].forEach((v) {
        providers!.add(Providers.fromJson(v));
      });
    }
    serviceApprovalStatus = json['service_approval_status'];
  }
}

class AttchmentsArray {
  int? id;
  String? url;

  AttchmentsArray({this.id, this.url});

  AttchmentsArray.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }
}

class ServiceAddressMapping {
  int? id;
  int? serviceId;
  int? providerAddressId;
  Null createdAt;
  Null updatedAt;
  ProviderAddressMapping? providerAddressMapping;

  ServiceAddressMapping(
      {this.id,
      this.serviceId,
      this.providerAddressId,
      this.createdAt,
      this.updatedAt,
      this.providerAddressMapping});

  ServiceAddressMapping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    providerAddressId = json['provider_address_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    providerAddressMapping = json['provider_address_mapping'] != null
        ? ProviderAddressMapping.fromJson(json['provider_address_mapping'])
        : null;
  }
}

class ProviderAddressMapping {
  int? id;
  int? providerId;
  String? address;
  String? latitude;
  String? longitude;
  int? status;
  String? createdAt;
  String? updatedAt;
  Null deletedAt;

  ProviderAddressMapping({
    this.id,
    this.providerId,
    this.address,
    this.latitude,
    this.longitude,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  ProviderAddressMapping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    providerId = json['provider_id'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
}

class Slots {
  String? day;
  List<String>? slot;

  Slots({this.day, this.slot});

  Slots.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    slot = json['slot'].cast<String>();
  }
}

class Providers {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  Null providerId;
  int? status;
  Null description;
  String? userType;
  String? email;
  String? contactNumber;
  int? countryId;
  int? stateId;
  int? cityId;
  String? cityName;
  String? address;
  int? providertypeId;
  String? providertype;
  int? isFeatured;
  String? displayName;
  String? createdAt;
  String? updatedAt;
  Null deletedAt;
  String? profileImage;
  String? timeZone;
  Null uid;
  String? loginType;
  Null serviceAddressId;
  String? lastNotificationSeen;
  int? providersServiceRating;
  int? handymanRating;
  int? isVerifyProvider;
  int? isHandymanAvailable;
  String? designation;
  Null handymantypeId;
  Null handymantype;
  String? knownLanguages;
  String? skills;
  int? isFavourite;
  List<String>? playerIds;
  int? totalServicesBooked;
  String? whyChooseMe;
  List<Slots>? slots;

  Providers({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.providerId,
    this.status,
    this.description,
    this.userType,
    this.email,
    this.contactNumber,
    this.countryId,
    this.stateId,
    this.cityId,
    this.cityName,
    this.address,
    this.providertypeId,
    this.providertype,
    this.isFeatured,
    this.displayName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.profileImage,
    this.timeZone,
    this.uid,
    this.loginType,
    this.serviceAddressId,
    this.lastNotificationSeen,
    this.providersServiceRating,
    this.handymanRating,
    this.isVerifyProvider,
    this.isHandymanAvailable,
    this.designation,
    this.handymantypeId,
    this.handymantype,
    this.knownLanguages,
    this.skills,
    this.isFavourite,
    this.playerIds,
    this.totalServicesBooked,
    this.whyChooseMe,
    this.slots,
  });

  Providers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    providerId = json['provider_id'];
    status = json['status'];
    description = json['description'];
    userType = json['user_type'];
    email = json['email'];
    contactNumber = json['contact_number'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    address = json['address'];
    providertypeId = json['providertype_id'];
    providertype = json['providertype'];
    isFeatured = json['is_featured'];
    displayName = json['display_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    profileImage = json['profile_image'];
    timeZone = json['time_zone'];
    uid = json['uid'];
    loginType = json['login_type'];
    serviceAddressId = json['service_address_id'];
    lastNotificationSeen = json['last_notification_seen'];
    providersServiceRating = json['providers_service_rating'];
    handymanRating = json['handyman_rating'];
    isVerifyProvider = json['is_verify_provider'];
    isHandymanAvailable = json['isHandymanAvailable'];
    designation = json['designation'];
    handymantypeId = json['handymantype_id'];
    handymantype = json['handymantype'];
    knownLanguages = json['known_languages'];
    skills = json['skills'];
    isFavourite = json['is_favourite'];
    playerIds = json['player_ids'].cast<String>();
    totalServicesBooked = json['total_services_booked'];
    whyChooseMe = json['why_choose_me'];
    if (json['slots'] != null) {
      slots = <Slots>[];
      json['slots'].forEach((v) {
        slots!.add(Slots.fromJson(v));
      });
    }
  }
}

class SlotsUpdated {
  int? id;
  int? providerId;
  String? days;
  String? startAt;
  String? endAt;
  int? status;
  String? createdAt;
  String? updatedAt;

  SlotsUpdated(
      {this.id,
      this.providerId,
      this.days,
      this.startAt,
      this.endAt,
      this.status,
      this.createdAt,
      this.updatedAt});

  SlotsUpdated.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    providerId = json['provider_id'];
    days = json['days'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

class Data {
  double? distance;
  int? id;
  String? name;
  int? categoryId;
  int? subcategoryId;
  int? providerId;
  int? price;
  String? priceFormat;
  String? type;
  int? discount;
  String? duration;
  int? status;
  String? description;
  int? isFeatured;
  String? providerName;
  Null providerImage;
  Null cityId;
  String? departmentName;
  String? categoryName;
  Null subcategoryName;
  List<String>? attchments;
  List<AttchmentsArray>? attchmentsArray;
  int? totalReview;
  int? totalRating;
  int? isFavourite;
  List<ServiceAddressMapping>? serviceAddressMapping;
  bool? attchmentExtension;
  Null deletedAt;
  int? isSlot;
  List<Slots>? slots;
  String? startDate;
  String? endDate;
  int? userServiceStatus;
  String? visitType;
  int? isEnableAdvancePayment;
  int? advancePaymentAmount;
  String? adminServiceType;
  List<Providers>? providers;
  int? serviceApprovalStatus;

  Data({
    this.distance,
    this.id,
    this.name,
    this.categoryId,
    this.subcategoryId,
    this.providerId,
    this.price,
    this.priceFormat,
    this.type,
    this.discount,
    this.duration,
    this.status,
    this.description,
    this.isFeatured,
    this.providerName,
    this.providerImage,
    this.cityId,
    this.departmentName,
    this.categoryName,
    this.subcategoryName,
    this.attchments,
    this.attchmentsArray,
    this.totalReview,
    this.totalRating,
    this.isFavourite,
    this.serviceAddressMapping,
    this.attchmentExtension,
    this.deletedAt,
    this.isSlot,
    this.slots,
    this.startDate,
    this.endDate,
    this.userServiceStatus,
    this.visitType,
    this.isEnableAdvancePayment,
    this.advancePaymentAmount,
    this.adminServiceType,
    this.providers,
    this.serviceApprovalStatus,
  });

  Data.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    providerId = json['provider_id'];
    price = json['price'];
    priceFormat = json['price_format'];
    type = json['type'];
    discount = json['discount'];
    duration = json['duration'];
    status = json['status'];
    description = json['description'];
    isFeatured = json['is_featured'];
    providerName = json['provider_name'];
    providerImage = json['provider_image'];
    cityId = json['city_id'];
    departmentName = json['department_name'];
    categoryName = json['category_name'];
    subcategoryName = json['subcategory_name'];
    attchments = json['attchments'].cast<String>();
    if (json['attchments_array'] != null) {
      attchmentsArray = <AttchmentsArray>[];
      json['attchments_array'].forEach((v) {
        attchmentsArray!.add(AttchmentsArray.fromJson(v));
      });
    }
    totalReview = json['total_review'];
    totalRating = json['total_rating'];
    isFavourite = json['is_favourite'];
    if (json['service_address_mapping'] != null) {
      serviceAddressMapping = <ServiceAddressMapping>[];
      json['service_address_mapping'].forEach((v) {
        serviceAddressMapping!.add(ServiceAddressMapping.fromJson(v));
      });
    }
    attchmentExtension = json['attchment_extension'];
    deletedAt = json['deleted_at'];
    isSlot = json['is_slot'];
    if (json['slots'] != null) {
      slots = <Slots>[];
      json['slots'].forEach((v) {
        slots!.add(Slots.fromJson(v));
      });
    }
    startDate = json['start_date'];
    endDate = json['end_date'];
    userServiceStatus = json['user_service_status'];
    visitType = json['visit_type'];
    isEnableAdvancePayment = json['is_enable_advance_payment'];
    advancePaymentAmount = json['advance_payment_amount'];
    adminServiceType = json['admin_service_type'];
    if (json['providers'] != null) {
      providers = <Providers>[];
      json['providers'].forEach((v) {
        providers!.add(Providers.fromJson(v));
      });
    }
    serviceApprovalStatus = json['service_approval_status'];
  }
}

class CommonServices {
  int? id;
  String? name;
  List<Providers>? providers;
  int? categoryId;
  int? subcategoryId;
  int? providerId;
  int? price;
  String? priceFormat;
  String? type;
  int? discount;
  Null duration;
  int? status;
  String? description;
  int? isFeatured;
  String? providerName;
  Null providerImage;
  Null cityId;
  String? categoryName;
  Null subcategoryName;
  List<String>? attchments;
  List<AttchmentsArray>? attchmentsArray;
  int? totalReview;
  int? totalRating;
  int? isFavourite;
  List<ServiceAddressMapping>? serviceAddressMapping;
  bool? attchmentExtension;
  Null deletedAt;
  int? isSlot;
  List<Slots>? slots;
  String? startDate;
  String? endDate;
  int? userServiceStatus;
  String? visitType;
  int? isEnableAdvancePayment;
  int? advancePaymentAmount;
  String? adminServiceType;
  int? serviceApprovalStatus;

  CommonServices({
    this.id,
    this.name,
    this.providers,
    this.categoryId,
    this.subcategoryId,
    this.providerId,
    this.price,
    this.priceFormat,
    this.type,
    this.discount,
    this.duration,
    this.status,
    this.description,
    this.isFeatured,
    this.providerName,
    this.providerImage,
    this.cityId,
    this.categoryName,
    this.subcategoryName,
    this.attchments,
    this.attchmentsArray,
    this.totalReview,
    this.totalRating,
    this.isFavourite,
    this.serviceAddressMapping,
    this.attchmentExtension,
    this.deletedAt,
    this.isSlot,
    this.slots,
    this.startDate,
    this.endDate,
    this.userServiceStatus,
    this.visitType,
    this.isEnableAdvancePayment,
    this.advancePaymentAmount,
    this.adminServiceType,
    this.serviceApprovalStatus,
  });

  CommonServices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['providers'] != null) {
      providers = <Providers>[];
      json['providers'].forEach((v) {
        providers!.add(Providers.fromJson(v));
      });
    }
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    providerId = json['provider_id'];
    price = json['price'];
    priceFormat = json['price_format'];
    type = json['type'];
    discount = json['discount'];
    duration = json['duration'];
    status = json['status'];
    description = json['description'];
    isFeatured = json['is_featured'];
    providerName = json['provider_name'];
    providerImage = json['provider_image'];
    cityId = json['city_id'];
    categoryName = json['category_name'];
    subcategoryName = json['subcategory_name'];
    attchments = json['attchments'].cast<String>();
    if (json['attchments_array'] != null) {
      attchmentsArray = <AttchmentsArray>[];
      json['attchments_array'].forEach((v) {
        attchmentsArray!.add(AttchmentsArray.fromJson(v));
      });
    }
    totalReview = json['total_review'];
    totalRating = json['total_rating'];
    isFavourite = json['is_favourite'];
    if (json['service_address_mapping'] != null) {
      serviceAddressMapping = <ServiceAddressMapping>[];
      json['service_address_mapping'].forEach((v) {
        serviceAddressMapping!.add(ServiceAddressMapping.fromJson(v));
      });
    }
    attchmentExtension = json['attchment_extension'];
    deletedAt = json['deleted_at'];
    isSlot = json['is_slot'];
    if (json['slots'] != null) {
      slots = <Slots>[];
      json['slots'].forEach((v) {
        slots!.add(Slots.fromJson(v));
      });
    }
    startDate = json['start_date'];
    endDate = json['end_date'];
    userServiceStatus = json['user_service_status'];
    visitType = json['visit_type'];
    isEnableAdvancePayment = json['is_enable_advance_payment'];
    advancePaymentAmount = json['advance_payment_amount'];
    adminServiceType = json['admin_service_type'];
    serviceApprovalStatus = json['service_approval_status'];
  }
}

class Pivot {
  int? serviceId;
  int? providerId;

  Pivot({this.serviceId, this.providerId});

  Pivot.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    providerId = json['provider_id'];
  }
}

class Userservices {
  double? distance;
  int? id;
  String? name;
  int? categoryId;
  int? subcategoryId;
  int? providerId;
  int? price;
  String? priceFormat;
  String? type;
  double? discount;
  String? duration;
  int? status;
  String? description;
  int? isFeatured;
  String? providerName;
  String? providerImage;
  int? cityId;
  String? departmentName;
  String? categoryName;
  String? subcategoryName;
  List<dynamic>? attachments;
  List<dynamic>? attachmentsArray;
  int? totalReview;
  int? totalRating;
  int? isFavourite;
  List<dynamic>? serviceAddressMapping;
  bool? attachmentExtension;
  String? deletedAt;
  int? isSlot;
  List<Slots>? slots;
  String? startDate;
  String? endDate;
  int? userServiceStatus;
  String? visitType;
  int? isEnableAdvancePayment;
  int? advancePaymentAmount;
  String? adminServiceType;
  List<dynamic>? providers;
  int? serviceApprovalStatus;

  Userservices({
    this.distance,
    this.id,
    this.name,
    this.categoryId,
    this.subcategoryId,
    this.providerId,
    this.price,
    this.priceFormat,
    this.type,
    this.discount,
    this.duration,
    this.status,
    this.description,
    this.isFeatured,
    this.providerName,
    this.providerImage,
    this.cityId,
    this.departmentName,
    this.categoryName,
    this.subcategoryName,
    this.attachments,
    this.attachmentsArray,
    this.totalReview,
    this.totalRating,
    this.isFavourite,
    this.serviceAddressMapping,
    this.attachmentExtension,
    this.deletedAt,
    this.isSlot,
    this.slots,
    this.startDate,
    this.endDate,
    this.userServiceStatus,
    this.visitType,
    this.isEnableAdvancePayment,
    this.advancePaymentAmount,
    this.adminServiceType,
    this.providers,
    this.serviceApprovalStatus,
  });

  factory Userservices.fromJson(Map<String, dynamic> json) {
    return Userservices(
      distance: (json['distance'] != null) ? json['distance'].toDouble() : null,
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      subcategoryId: json['subcategory_id'],
      providerId: json['provider_id'],
      price: json['price'],
      priceFormat: json['price_format'],
      type: json['type'],
      discount: (json['discount'] != null) ? json['discount'].toDouble() : null,
      duration: json['duration'],
      status: json['status'],
      description: json['description'],
      isFeatured: json['is_featured'],
      providerName: json['provider_name'],
      providerImage: json['provider_image'],
      cityId: json['city_id'],
      departmentName: json['department_name'],
      categoryName: json['category_name'],
      subcategoryName: json['subcategory_name'],
      attachments: json['attachments'] != null
          ? List<dynamic>.from(json['attachments'])
          : null,
      attachmentsArray: json['attachments_array'] != null
          ? List<dynamic>.from(json['attachments_array'])
          : null,
      totalReview: json['total_review'],
      totalRating: json['total_rating'],
      isFavourite: json['is_favourite'],
      serviceAddressMapping: json['service_address_mapping'] != null
          ? List<dynamic>.from(json['service_address_mapping'])
          : null,
      attachmentExtension: json['attachment_extension'],
      deletedAt: json['deleted_at'],
      isSlot: json['is_slot'],
      slots: json['slots'] != null
          ? List<Slots>.from(json['slots'].map((v) => Slots.fromJson(v)))
          : null,
      startDate: json['start_date'],
      endDate: json['end_date'],
      userServiceStatus: json['user_service_status'],
      visitType: json['visit_type'],
      isEnableAdvancePayment: json['is_enable_advance_payment'],
      advancePaymentAmount: json['advance_payment_amount'],
      adminServiceType: json['admin_service_type'],
      providers: json['providers'] != null
          ? List<dynamic>.from(json['providers'])
          : null,
      serviceApprovalStatus: json['service_approval_status'],
    );
  }
}

class FeatureService {
  final double distance;
  final int id;
  final String name;
  final int categoryId;
  final int subcategoryId;
  final int providerId;
  final double price;
  final String priceFormat;
  final String type;
  final int discount;
  final String? duration;
  final int status;
  final String description;
  final int isFeatured;
  final String providerName;
  final String? providerImage;
  final int? cityId;
  final String departmentName;
  final String categoryName;
  final String? subcategoryName;
  final List<String> attchments;
  final List<AttchmentsArray> attchmentsArray;
  final int totalReview;
  final int totalRating;
  final int isFavourite;
  final List<ServiceAddressMapping> serviceAddressMapping;
  final bool attchmentExtension;
  final String? deletedAt;
  final int isSlot;
  final List<SlotsUpdated> slots;
  final String startDate;
  final String endDate;
  final int userServiceStatus;
  final String visitType;
  final int isEnableAdvancePayment;
  final double advancePaymentAmount;
  final String adminServiceType;
  final List<Providers> providers;
  final int serviceApprovalStatus;

  FeatureService({
    required this.distance,
    required this.id,
    required this.name,
    required this.categoryId,
    required this.subcategoryId,
    required this.providerId,
    required this.price,
    required this.priceFormat,
    required this.type,
    required this.discount,
    this.duration,
    required this.status,
    required this.description,
    required this.isFeatured,
    required this.providerName,
    this.providerImage,
    this.cityId,
    required this.departmentName,
    required this.categoryName,
    this.subcategoryName,
    required this.attchments,
    required this.attchmentsArray,
    required this.totalReview,
    required this.totalRating,
    required this.isFavourite,
    required this.serviceAddressMapping,
    required this.attchmentExtension,
    this.deletedAt,
    required this.isSlot,
    required this.slots,
    required this.startDate,
    required this.endDate,
    required this.userServiceStatus,
    required this.visitType,
    required this.isEnableAdvancePayment,
    required this.advancePaymentAmount,
    required this.adminServiceType,
    required this.providers,
    required this.serviceApprovalStatus,
  });

  factory FeatureService.fromJson(Map<String, dynamic> json) {
    return FeatureService(
      distance: json['distance'].toDouble(),
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      subcategoryId: json['subcategory_id'],
      providerId: json['provider_id'],
      price: json['price'].toDouble(),
      priceFormat: json['price_format'],
      type: json['type'],
      discount: json['discount'],
      duration: json['duration'],
      status: json['status'],
      description: json['description'],
      isFeatured: json['is_featured'],
      providerName: json['provider_name'],
      providerImage: json['provider_image'],
      cityId: json['city_id'],
      departmentName: json['department_name'],
      categoryName: json['category_name'],
      subcategoryName: json['subcategory_name'],
      attchments: List<String>.from(json['attchments']),
      attchmentsArray: List<AttchmentsArray>.from(
          json['attchments_array'].map((x) => AttchmentsArray.fromJson(x))),
      totalReview: json['total_review'],
      totalRating: json['total_rating'],
      isFavourite: json['is_favourite'],
      serviceAddressMapping: List<ServiceAddressMapping>.from(
          json['service_address_mapping']
              .map((x) => ServiceAddressMapping.fromJson(x))),
      attchmentExtension: json['attchment_extension'],
      deletedAt: json['deleted_at'],
      isSlot: json['is_slot'],
      slots: List<SlotsUpdated>.from(
          json['slots'].map((x) => SlotsUpdated.fromJson(x))),
      startDate: json['start_date'],
      endDate: json['end_date'],
      userServiceStatus: json['user_service_status'],
      visitType: json['visit_type'],
      isEnableAdvancePayment: json['is_enable_advance_payment'],
      advancePaymentAmount: json['advance_payment_amount'].toDouble(),
      adminServiceType: json['admin_service_type'],
      providers: List<Providers>.from(
          json['providers'].map((x) => Providers.fromJson(x))),
      serviceApprovalStatus: json['service_approval_status'],
    );
  }
}
