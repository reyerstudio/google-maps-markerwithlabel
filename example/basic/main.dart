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

  var marker1 = MarkerWithLabel(MarkerWithLabelOptions()
        ..position = homeLatLng
        ..draggable = true
        ..raiseOnDrag = true
        ..map = map
        ..labelContent = "\$425K"
        ..labelAnchor = Point(22, 0)
        ..labelClass = "labels" // the CSS class for the label
      //..labelStyle: {opacity: 0.75}
      );

  var marker2 = MarkerWithLabel(MarkerWithLabelOptions()
        ..position = LatLng(49.475, -123.84)
        ..draggable = true
        ..raiseOnDrag = true
        ..map = map
        ..labelContent = "\$395K"
        ..labelAnchor = Point(22, 0)
        ..labelClass = "labels" // the CSS class for the label
      //..labelStyle: {opacity: 1.0}
      );

  var iw1 = InfoWindow()..content = "Home For Sale";
  var iw2 = InfoWindow()..content = "Another Home For Sale";
  marker1.onClick.listen((e) => iw1.open(map, marker1));
  marker2.onClick.listen((e) => iw2.open(map, marker2));
}
