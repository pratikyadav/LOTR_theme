// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';
@name_arrr: "[name_en].replace('([Aa]r)','\1rr')";

// Common Colors //
@land: #f6e2ca;
@water: #cdd;
@park: #cda;


#country_label[zoom>=3] {
  
  
  text-name: @name;
  
  text-face-name: 'Aniron Bold';
  text-placement-type: simple;
  text-placements: "N,S,E,W";
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #000000;
  text-opacity:1;
  text-size: 10;
  text-halo-fill:fadeout(@land,40);
  text-halo-radius:1.5;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 12;
  }
  
}


#state_label[zoom>=5]{
  text-name: @name;
  text-face-name: 'Aniron Bold';
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #000000;
  text-size: 10;
  text-halo-fill:fadeout(@land,40);
  text-halo-radius:1.5;
  
  }


#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
  	text-name: @name;
    text-face-name: 'Aniron Bold';
    text-line-spacing:-5;
    text-fill: #245;
    text-size: 24;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}


#place_label[type='city'] [zoom>4][zoom<=14] {
  marker-file:url("ring.png");
  //point-file-ha
  //point-comp-op: src-atop;
  text-dy: 2;
  text-dx: 2;
  text-name: @name ;
  text-face-name: 'Aniron Bold';
  text-fill: #000000;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-size: 8;
  //text-orientation: 45;
  
}

#place_label[type='town'] {
  text-name: @name;
  text-face-name: 'Aniron Bold';
  text-fill: #000000;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-min-distance: 20;
  text-size: 12;
  [zoom=9] { text-size: 17; }
  [zoom=10] { text-size: 18; }
  [zoom=11] { text-size: 20; }
  [zoom=12] { text-size: 24; }
  [zoom>=13] { text-size: 28; }
}

#place_label[type='village'],
#place_label[type='suburb'] {
  text-name: @name;
  text-face-name: 'Aniron Bold';
  text-fill: #000000;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-min-distance: 40;
  text-size: 12;
  [zoom=11] { text-size: 17; }
  [zoom=12] { text-size: 18; }
  [zoom=13] { text-size: 20; }
  [zoom=14] { text-size: 24; }
  [zoom>=15] { text-size: 28; }
}

#place_label[type='hamlet'],
#place_label[type='neighbourhood'] {
  text-name: @name;
  text-face-name: 'Aniron Bold';
  text-fill: #020202;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-wrap-before: true;
  text-wrap-width: 80;
  text-min-distance: 40;
  text-size: 14;
  [zoom=13] { text-size: 16; }
  [zoom=14] { text-size: 18; }
  [zoom=15] { text-size: 20; }
  [zoom=16] { text-size: 24; }
  [zoom>=17] { text-size: 28; }
}


@marine_text: #000000;
@mts: 2;
#marine_label::text[zoom>=0][zoom<=7] {
  text-name: @name;
  text-face-name: 'Gothic Ultra OT Regular';
  text-fill: @marine_text;
  text-wrap-width: 80;
  text-wrap-before: true;
  //text-comp-op: color-burn;
  [placement = 'point'] {
    text-placement: point;
  }
  [placement = 'line'] {
    text-placement: line;
    text-avoid-edges: true;
    text-dy:10; // for Mutlu
  }
  [labelrank = 1] {
    [zoom = 3] {
      text-size: 30;
      text-character-spacing: 8;
    }
    [zoom = 4] {
      text-size: 35;
      text-character-spacing: 16;
    }
    [zoom = 5] {
      text-size: 40;
      text-character-spacing: 20;
    }
  }
  [labelrank = 2] {
    [zoom = 3] {
      text-size: 18;
      text-character-spacing: 1;
    }
    [zoom = 4] {
      text-size: 24;
      text-character-spacing: 2;
    }
    [zoom = 5] {
      text-size: 30;
      text-character-spacing: 4;
    }
    [zoom = 6] {
      text-size: 35;
      text-character-spacing: 5;
    }
  }
  [labelrank = 3] {
    [zoom = 3] {
      text-size: 14;
      text-character-spacing: 2;
      text-line-spacing: -10;
    }
    [zoom = 4] {
      text-size: 18;
      text-character-spacing: 3;
      text-line-spacing: -10;
    }
    [zoom = 5] {
      text-size: 25;
      text-character-spacing: 4;
      text-line-spacing: -10;
    }
    [zoom = 6] {
      text-size: 18;
      text-character-spacing: 5;
    }
  }
  [labelrank = 4][zoom = 4],
  [labelrank = 5][zoom = 5],
  [labelrank = 6][zoom = 6] {
    text-size: 12;
    text-character-spacing: 2;
    text-line-spacing: 6;
  }
  [labelrank = 4][zoom = 5],
  [labelrank = 5][zoom = 6],
  [labelrank = 6][zoom = 7] {
    text-size: 14;
    text-character-spacing: 3;
    text-line-spacing: 8;
  }
  [labelrank = 4][zoom = 6],
  [labelrank = 5][zoom = 7] {
    text-size: 16;
    text-character-spacing: 4;
    text-line-spacing: 1;
  }
}






Map {
  background-color:@land;
  background-image: url("land.png");
  //background-repeat:
  //background-image-comp-op: dst-out;
  font-directory: url("font/"); 
 
  
}



// Political boundaries //


// Water Features //
/*#ne_110m_coastline {
  line-color: #000000 ;
  line-width: 4;
  //line-pattern-file:url("mario.png");
  //line-pattern-offset: 0;
  //line-pattern-clip: 0;
}*/


@water_line:lighten(@water,8);
#water {
  ::b {
    polygon-pattern-file:url("water.png");
    //polygon-comp-op: dst;
	//polygon-pattern-alignment:global;
    
  }
  polygon-fill: mix(@water,#fff,50);
  polygon-gamma: 0.6;
  comp-op:multiply;
  a/line-color:@water_line;
  a/line-width:-0.4;
  a/line-comp-op:multiply;
  a/line-smooth:2;
  b/line-color:@water_line;
  b/line-width:-0.4;
  b/line-comp-op:multiply;
  b/line-smooth:4;
  c/line-color:@water_line;
  c/line-width:-0.4;
  c/line-comp-op:multiply;
  c/line-smooth:6;
  [zoom>=12] {
    a/line-width:0.8;
    b/line-width:0.8;
    c/line-width:0.8;
  }
}




#world_peaks 
  [zoom>=5]{
  marker-file:url("hill copy.png");
  //marker-comp-op:dst-out;
  
  }

    
  


#waterway {
  comp-op:multiply;
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}


// Landuse areas //

#landuse {
  ::glow {
    comp-op:multiply;
    [class='park'],[class='pitch'],[class='school'] {
      line-width:2;
      line-join:round;
      [class='park'] { line-color:#ddb; }
      [class='pitch'] { line-color:#eed; }
      [class='school'] { line-color:#edb; }
  	}
  }
  ::main[zoom>=0] {
    comp-op:multiply;
    [class='park']{
      polygon-pattern-file:url("shell12.png");
      
      
    }
    [class='school'] {
      polygon-fill:#ed9;
      polygon-opacity:0.5;
    }
  }
  
}


// Buildings //

#building {
  polygon-fill:#efe8d8;
  comp-op:multiply;
  [zoom>=15] {
    line-color:#efe8d8 * 0.9;
    [zoom>=15] { line-width:0.2; }
    [zoom>=16] { line-width:0.4; }
    [zoom>=17] { line-width:0.8; }
  }
}


// Roads & Railways //

/*#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    line-width: 1;
    line-color:#edc;
    line-comp-op:multiply;
    [class='motorway'],
    [class='main'],
    [class='motorway_link']{
      line-color:#dba;
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=13] { line-width: 1.4; }
      [zoom>=14] { line-width: 2; }
      [zoom>=16] { line-width: 3; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
    [class='path'] { line-dasharray: 3,2; }
  }
}*/
#ne_10m_coastline [zoom>4] [zoom<=10]{
  line-width:2;
  [zoom=5]{line-width:1}
  [zoom=6]{line-width:2 }
}

