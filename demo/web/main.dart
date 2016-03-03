// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:demo_highcharts_options/samples.dart';

List menu = [
  {
    'title': 'Basic Line',
    'example': basicLine
  },
  {
    'title': 'With data labels',
    'example': with_data_labels
  },
  {
    'title': 'Time series, zoomable',
    'example': time_series_zoomable
  },
  {
    'title': 'Spline with inverted axes',
    'example': spline_with_inverted_axes
  },
  {
    'title': 'Spline with symbols',
    'example': spline_with_symbols
  },
  {
    'title': 'Time data with irregular intervals',
    'example': time_data_with_irregular_intervals
  }
];

void main() {
  initMenu();
}

void initMenu () {
  UListElement ulMenu = querySelector("#menu");
  menu.forEach((menuItem) {
    ulMenu.append(new LIElement()
                    ..text = menuItem['title']
                    ..onClick.listen(menuItem['example']));
  });

}
