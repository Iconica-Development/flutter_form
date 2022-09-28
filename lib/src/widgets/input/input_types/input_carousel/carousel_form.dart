import 'package:flutter/material.dart';
import 'carousel_slider.dart';

class CarouselFormField extends FormField<int> {
  CarouselFormField({
    Key? key,
    required FormFieldSetter<int> onSaved,
    required FormFieldValidator<int> validator,
    int initialValue = 0,
    bool autovalidate = false,
    required List<Widget> items,
  }) : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<int> state) {
              return CarouselSlider(
                options: CarouselOptions(
                  initialPage: initialValue,
                  onPageChanged: (index, reason) {
                    state.didChange(index);
                  },
                  height: 425,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                ),
                items: items.map((Widget item) {
                  return item;
                }).toList(),
              );
            });
}