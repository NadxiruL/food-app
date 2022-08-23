import 'dart:convert';
import 'package:deligram/.env.dart';
import 'package:http/http.dart ' as http;

//1. create class

class Stripe {
//2. declare field data yang diperlukan.

  static String apiURL = 'https://api.stripe.com/v1';
  static String paymentIntentURL = '$apiURL/payment_intents';
  static String paymentMethodURL = '$apiURL/payment_methods';
  static String secret = SecretKey;

  static Map<String, String> headers = {
    'Authorization': 'Bearer $secret',
    'Content-type': 'application/x-www-form-urlencoded'
  };

//3. create function create method//

  static Future<Map<String, dynamic>> createCardPaymentMethod(
      {required String number,
      required String expMonth,
      required String expYear,
      required String cvc}) async {
    try {
      Map<String, String> body = {
        'type': 'card',
        'card[number]': number,
        'card[exp_month]': expMonth,
        'card[exp_year]': expYear,
        'card[cvc]': cvc,
      };
      var response = await http.post(Uri.parse(paymentMethodURL),
          body: body, headers: headers);
      Map<String, dynamic> data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        throw ('Error creating payment method. ${data['error']['message']}');
      }

      return data;
    } catch (error) {
      // print('Error occured : ${error.toString()}');
      rethrow;
      // (error);
    }
  }

  //create function createpaymentintent beserta data yang ingin dihantar.
  static Future<Map<String, dynamic>?> createPaymentIntent(
      String amount, String currency, String description) async {
    try {
      Map<String, dynamic> body = {
        'amount':
            amount, // amount charged will be specified when the method is called
        'currency': currency, // the currency
        'payment_method_types[]': 'card',
        'description': description,
      };

      var response = await http.post(Uri.parse(paymentIntentURL), //api url
          body: body, //request body
          headers: headers //headers of the request specified in the base class
          );
      return jsonDecode(response.body); //decode the response to json
    } catch (error) {
      print('Error occured : ${error.toString()}');
    }
    return null;
  }
}
