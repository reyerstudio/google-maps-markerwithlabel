// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library google_maps_markerwithlabel.src;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

part 'markerwithlabel.g.dart';

abstract class _MarkerWithLabel extends Marker {
  factory _MarkerWithLabel([MarkerWithLabelOptions opts]) => null;

  void set labelContent(String content) => _setLabelContent(content);
  void _setLabelContent(String content);
}

@anonymous
abstract class _MarkerWithLabelOptions extends MarkerOptions {
  factory _MarkerWithLabelOptions() => null;

  String crossImage;
  String handCursor;
  Point labelAnchor;
  String labelClass;
  String labelContent;
  bool labelInBackground;
  String labelStyle;
  bool labelVisible;
  bool raiseOnDrag;
}
