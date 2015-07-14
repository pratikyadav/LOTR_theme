#country_label[zoom>=3] {
  
  
  text-name: @name;
  
  text-face-name: 'Aniron Bold';
  text-placement-type: simple;
  text-placements: "N,S,E,W";
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #000000;
  text-opacity:1;
  text-size: 14;
  text-halo-fill:fadeout(@land,40);
  text-halo-radius:1.5;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 18;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 24;
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
  text-size: 5;
  text-orientation: 45;
  [zoom<=6] {
    [scalerank>=0][scalerank<=1] { text-size: 22; }
    [scalerank>=2][scalerank<=3] { text-size: 18; }
    [scalerank>=4] { text-size: 8; }
  }
  [zoom=7] {
    [scalerank>=0][scalerank<=1] { text-size: 24; }
    [scalerank>=2][scalerank<=3] { text-size: 20; }
    [scalerank>=4] { text-size: 8; }
  }
  [zoom=8] {
  	text-size: 16;
    [scalerank>=0][scalerank<=1] { text-size: 28; }
    [scalerank>=2][scalerank<=3] { text-size: 24; }
    [scalerank>=4] { text-size: 6; }
  }
  [zoom=9] {
    text-size: 20;
    [scalerank>=0][scalerank<=1] { text-size: 30; }
    [scalerank>=2][scalerank<=3] { text-size: 26; }
    [scalerank>=4] { text-size: 24; }
  }
  [zoom=10] {
    text-size: 22;
    [scalerank>=0][scalerank<=1] { text-size: 32; }
    [scalerank>=2][scalerank<=3] { text-size: 28; }
    [scalerank>=4] { text-size: 26; }
  }
  [zoom=11] {
    text-size: 26;
    [scalerank>=0][scalerank<=1] { text-size: 34; }
    [scalerank>=2][scalerank<=3] { text-size: 32; }
    [scalerank>=4] { text-size: 30; }
  }
  [zoom=12] {
    text-size: 28;
    [scalerank<=3] { text-size: 36; }
    [scalerank>=4] { text-size: 32; }
  }
  [zoom=13] {
    text-size: 36;
  }
  [zoom=14] {
    text-size: 40;
  }
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
  text-size: 16;
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
