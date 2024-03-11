part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.checkout(CheckoutRequestModel checkoutRequest) = _Checkout;
}