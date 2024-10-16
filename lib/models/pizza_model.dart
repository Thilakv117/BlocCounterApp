// ignore_for_file: unused_import

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Pizza extends Equatable {
  final String id;
  final String name;
  Pizza({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];

  static List<Pizza> pizza = [
    Pizza(
      id: '0',
      name: 'Pizza',
    ),
    Pizza(id: '1', name: 'Pzza pepperoni')
  ];
}
