import 'package:cloud_firestore/cloud_firestore.dart';

class FeechallanModel {}

class PaymentModel {
  final int amount;
  final String dueDate;
  final String generatedOn;
  final String quickPaymentDetail;
  final String onlinePaymentThroughNift;
  final String status;
  final String printChallan;

  PaymentModel({
    required this.amount,
    required this.dueDate,
    required this.generatedOn,
    required this.quickPaymentDetail,
    required this.onlinePaymentThroughNift,
    required this.status,
    required this.printChallan,
  });
  factory PaymentModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return PaymentModel(
      printChallan:data['print chalan'],
      amount: data['Amount'],
      dueDate: data['Due date'],
      generatedOn: data['Generated On'],
      quickPaymentDetail: data['Kuick payment Detail'],
      onlinePaymentThroughNift: data['Online payment Through NiFT'],
      status: data['status'],
    );
  }

  factory PaymentModel.fromJson(Map<String, dynamic> json) {
    return PaymentModel(
      printChallan:json['print chalan'],
      amount: json['Amount'],
      dueDate: json['Due date'],
      generatedOn: json['Generated On'],
      quickPaymentDetail: json['Kuick payment Detail'],
      onlinePaymentThroughNift: json['Online payment Through NiFT'],
      status: json['status'],
    );
  }
}
