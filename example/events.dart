// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html' hide MouseEvent, Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_markerwithlabel/markerwithlabel.dart';

main() {
  var latLng = new LatLng(49.47805, -123.84716);
  var homeLatLng = new LatLng(49.47805, -123.84716);

  var map = new GMap(
      document.getElementById('map_canvas'),
      new MapOptions()
        ..zoom = 12
        ..center = latLng
        ..mapTypeId = MapTypeId.ROADMAP);

  var marker = new MarkerWithLabel(new MarkerWithLabelOptions()
        ..position = homeLatLng
        ..draggable = true
        ..raiseOnDrag = true
        ..map = map
        ..labelContent = "\$425K"
        ..labelAnchor = new Point(22, 0)
        ..labelClass = "labels" // the CSS class for the label
      );

  var iw = new InfoWindow()..content = "Home For Sale";
  marker
    ..onClick.listen((_) => iw.open(map, marker))
    ..onDblclick.listen((_) => log("Double Click"))
    ..onMouseover.listen((_) => log("Mouse Over"))
    ..onMouseout.listen((_) => log("Mouse Out"))
    ..onMouseup.listen((_) => log("Mouse Up"))
    ..onMousedown.listen((_) => log("Mouse Down"))
    ..onDragstart.listen((e) => log("Drag Start: ${e.latLng}"))
    ..onDrag.listen((e) => log("Drag: ${e.latLng}"))
    ..onDragend.listen((e) => log("Drag End: ${e.latLng}"));
}

void log(h) {
  document.getElementById("log").innerHtml += h + "<br/>";
}
