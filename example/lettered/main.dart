// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html' hide MouseEvent, Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_markerwithlabel/markerwithlabel.dart';

main() {
  var latLng = LatLng(49.47805, -123.84716);
  var homeLatLng = LatLng(49.47805, -123.84716);

  var map = GMap(
      document.getElementById('map_canvas'),
      MapOptions()
        ..zoom = 12
        ..center = latLng
        ..mapTypeId = MapTypeId.ROADMAP);

  var marker = MarkerWithLabel(MarkerWithLabelOptions()
    ..position = homeLatLng
    ..draggable = true
    ..raiseOnDrag = true
    ..map = map
    ..labelContent = "A"
    ..labelAnchor = Point(3, 30)
    ..labelClass = "labels" // the CSS class for the label
    ..labelInBackground = false);

  var iw = InfoWindow()..content = "Home For Sale";
  marker.onClick.listen((e) => iw.open(map, marker));
}
