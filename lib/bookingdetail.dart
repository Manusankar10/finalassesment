class BookingDetails {
  Bookingdata? bookingdata;
  String? status;

  BookingDetails({this.bookingdata, this.status});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    bookingdata =
        json['data'] != null ? new Bookingdata.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingdata != null) {
      data['data'] = this.bookingdata!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Bookingdata {
  String? reservationId;
  String? uniqueBookingId;
  String? confirmationId;
  String? confirmationType;
  String? reservationStatus;
  Details? details;
  List<RoomTypes>? roomTypes;
  List<ReservePayments>? reservePayments;
  List<Guarantees>? guarantees;
  List<Guests>? guests;

  Bookingdata(
      {this.reservationId,
      this.uniqueBookingId,
      this.confirmationId,
      this.confirmationType,
      this.reservationStatus,
      this.details,
      this.roomTypes,
      this.reservePayments,
      this.guarantees,
      this.guests});

  Bookingdata.fromJson(Map<String, dynamic> json) {
    reservationId = json['reservationId'];
    uniqueBookingId = json['uniqueBookingId'];
    confirmationId = json['confirmationId'];
    confirmationType = json['confirmationType'];
    reservationStatus = json['reservationStatus'];
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
    if (json['roomTypes'] != null) {
      roomTypes = <RoomTypes>[];
      json['roomTypes'].forEach((v) {
        roomTypes!.add(new RoomTypes.fromJson(v));
      });
    }
    if (json['reservePayments'] != null) {
      reservePayments = <ReservePayments>[];
      json['reservePayments'].forEach((v) {
        reservePayments!.add(new ReservePayments.fromJson(v));
      });
    }
    if (json['guarantees'] != null) {
      guarantees = <Guarantees>[];
      json['guarantees'].forEach((v) {
        guarantees!.add(new Guarantees.fromJson(v));
      });
    }
    if (json['guests'] != null) {
      guests = <Guests>[];
      json['guests'].forEach((v) {
        guests!.add(new Guests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reservationId'] = this.reservationId;
    data['uniqueBookingId'] = this.uniqueBookingId;
    data['confirmationId'] = this.confirmationId;
    data['confirmationType'] = this.confirmationType;
    data['reservationStatus'] = this.reservationStatus;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    if (this.roomTypes != null) {
      data['roomTypes'] = this.roomTypes!.map((v) => v.toJson()).toList();
    }
    if (this.reservePayments != null) {
      data['reservePayments'] =
          this.reservePayments!.map((v) => v.toJson()).toList();
    }
    if (this.guarantees != null) {
      data['guarantees'] = this.guarantees!.map((v) => v.toJson()).toList();
    }
    if (this.guests != null) {
      data['guests'] = this.guests!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String? id;
  String? hotelId;
  String? hotelName;
  ContactPerson? contactPerson;
  String? checkInDate;
  String? checkOutDate;
  int? nightCount;
  int? adultGuestCount;
  int? childGuestCount;
  int? totalGuestCount;
  HoldAmount? holdAmount;

  Details(
      {this.id,
      this.hotelId,
      this.hotelName,
      this.contactPerson,
      this.checkInDate,
      this.checkOutDate,
      this.nightCount,
      this.adultGuestCount,
      this.childGuestCount,
      this.totalGuestCount,
      this.holdAmount});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hotelId = json['hotelId'];
    hotelName = json['hotel_name'];
    contactPerson = json['contactPerson'] != null
        ? new ContactPerson.fromJson(json['contactPerson'])
        : null;
    checkInDate = json['checkInDate'];
    checkOutDate = json['checkOutDate'];
    nightCount = json['nightCount'];
    adultGuestCount = json['adultGuestCount'];
    childGuestCount = json['childGuestCount'];
    totalGuestCount = json['totalGuestCount'];
    holdAmount = json['holdAmount'] != null
        ? new HoldAmount.fromJson(json['holdAmount'])
        : null;
  }

  get data => null;

  get uniqueBookingId => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['hotelId'] = this.hotelId;
    data['hotel_name'] = this.hotelName;
    if (this.contactPerson != null) {
      data['contactPerson'] = this.contactPerson!.toJson();
    }
    data['checkInDate'] = this.checkInDate;
    data['checkOutDate'] = this.checkOutDate;
    data['nightCount'] = this.nightCount;
    data['adultGuestCount'] = this.adultGuestCount;
    data['childGuestCount'] = this.childGuestCount;
    data['totalGuestCount'] = this.totalGuestCount;
    if (this.holdAmount != null) {
      data['holdAmount'] = this.holdAmount!.toJson();
    }
    return data;
  }
}

class ContactPerson {
  String? id;
  String? idType;
  String? email;
  String? firstName;
  String? lastName;
  String? title;
  String? phoneNumber;
  String? emailOperaId;
  String? phoneOperaId;
  String? addressOperaId;

  ContactPerson(
      {this.id,
      this.idType,
      this.email,
      this.firstName,
      this.lastName,
      this.title,
      this.phoneNumber,
      this.emailOperaId,
      this.phoneOperaId,
      this.addressOperaId});

  ContactPerson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idType = json['IdType'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    title = json['title'];
    phoneNumber = json['phoneNumber'];
    emailOperaId = json['emailOperaId'];
    phoneOperaId = json['phoneOperaId'];
    addressOperaId = json['addressOperaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['IdType'] = this.idType;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['title'] = this.title;
    data['phoneNumber'] = this.phoneNumber;
    data['emailOperaId'] = this.emailOperaId;
    data['phoneOperaId'] = this.phoneOperaId;
    data['addressOperaId'] = this.addressOperaId;
    return data;
  }
}

class HoldAmount {
  int? holdAmount;
  String? currency;
  int? depositAmount;

  HoldAmount({this.holdAmount, this.currency, this.depositAmount});

  HoldAmount.fromJson(Map<String, dynamic> json) {
    holdAmount = json['holdAmount'];
    currency = json['currency'];
    depositAmount = json['depositAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['holdAmount'] = this.holdAmount;
    data['currency'] = this.currency;
    data['depositAmount'] = this.depositAmount;
    return data;
  }
}

class RoomTypes {
  String? roomNumber;
  String? code;
  String? name;
  String? shortName;
  int? count;
  String? price;

  RoomTypes(
      {this.roomNumber,
      this.code,
      this.name,
      this.shortName,
      this.count,
      this.price});

  RoomTypes.fromJson(Map<String, dynamic> json) {
    roomNumber = json['roomNumber'];
    code = json['code'];
    name = json['name'];
    shortName = json['shortName'];
    count = json['count'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roomNumber'] = this.roomNumber;
    data['code'] = this.code;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['count'] = this.count;
    data['price'] = this.price;
    return data;
  }
}

class ReservePayments {
  String? paymentType;
  String? cardType;
  String? cardNumber;
  String? cardHolderName;
  String? cardExpiryDate;

  ReservePayments(
      {this.paymentType,
      this.cardType,
      this.cardNumber,
      this.cardHolderName,
      this.cardExpiryDate});

  ReservePayments.fromJson(Map<String, dynamic> json) {
    paymentType = json['paymentType'];
    cardType = json['cardType'];
    cardNumber = json['cardNumber'];
    cardHolderName = json['cardHolderName'];
    cardExpiryDate = json['cardExpiryDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['paymentType'] = this.paymentType;
    data['cardType'] = this.cardType;
    data['cardNumber'] = this.cardNumber;
    data['cardHolderName'] = this.cardHolderName;
    data['cardExpiryDate'] = this.cardExpiryDate;
    return data;
  }
}

class Guarantees {
  String? guaranteeType;
  String? cardNumber;
  String? cardHolderName;
  String? cardExpiryDate;

  Guarantees(
      {this.guaranteeType,
      this.cardNumber,
      this.cardHolderName,
      this.cardExpiryDate});

  Guarantees.fromJson(Map<String, dynamic> json) {
    guaranteeType = json['guaranteeType'];
    cardNumber = json['cardNumber'];
    cardHolderName = json['cardHolderName'];
    cardExpiryDate = json['cardExpiryDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guaranteeType'] = this.guaranteeType;
    data['cardNumber'] = this.cardNumber;
    data['cardHolderName'] = this.cardHolderName;
    data['cardExpiryDate'] = this.cardExpiryDate;
    return data;
  }
}

class Guests {
  String? arrivalTime;
  String? departureTime;
  String? firstName;
  String? lastName;
  String? title;
  String? gender;
  String? nationality;
  List<String>? emails;
  String? emailOperaId;
  String? id;
  String? idType;
  List<String>? phone;
  String? phoneOperaId;
  String? arrivalTransport;
  String? departureTransport;
  String? addressLine;
  String? cityName;
  String? stateProv;
  String? countryCode;
  String? postalCode;
  String? addressOperaId;

  Guests(
      {this.arrivalTime,
      this.departureTime,
      this.firstName,
      this.lastName,
      this.title,
      this.gender,
      this.nationality,
      this.emails,
      this.emailOperaId,
      this.id,
      this.idType,
      this.phone,
      this.phoneOperaId,
      this.arrivalTransport,
      this.departureTransport,
      this.addressLine,
      this.cityName,
      this.stateProv,
      this.countryCode,
      this.postalCode,
      this.addressOperaId});

  Guests.fromJson(Map<String, dynamic> json) {
    arrivalTime = json['arrivalTime'];
    departureTime = json['departureTime'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    title = json['title'];
    gender = json['gender'];
    nationality = json['nationality'];
    emails = json['emails'].cast<String>();
    emailOperaId = json['emailOperaId'];
    id = json['id'];
    idType = json['id_type'];
    phone = json['phone'].cast<String>();
    phoneOperaId = json['phoneOperaId'];
    arrivalTransport = json['arrivalTransport'];
    departureTransport = json['departureTransport'];
    addressLine = json['addressLine'];
    cityName = json['cityName'];
    stateProv = json['stateProv'];
    countryCode = json['countryCode'];
    postalCode = json['postalCode'];
    addressOperaId = json['addressOperaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['arrivalTime'] = this.arrivalTime;
    data['departureTime'] = this.departureTime;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['title'] = this.title;
    data['gender'] = this.gender;
    data['nationality'] = this.nationality;
    data['emails'] = this.emails;
    data['emailOperaId'] = this.emailOperaId;
    data['id'] = this.id;
    data['id_type'] = this.idType;
    data['phone'] = this.phone;
    data['phoneOperaId'] = this.phoneOperaId;
    data['arrivalTransport'] = this.arrivalTransport;
    data['departureTransport'] = this.departureTransport;
    data['addressLine'] = this.addressLine;
    data['cityName'] = this.cityName;
    data['stateProv'] = this.stateProv;
    data['countryCode'] = this.countryCode;
    data['postalCode'] = this.postalCode;
    data['addressOperaId'] = this.addressOperaId;
    return data;
  }
}
