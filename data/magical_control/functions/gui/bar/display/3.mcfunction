#>magical_control:gui/bar/display/3
#
#mp hp表示 102分率
#
#@within function magical_control:gui/bar/calc

$bossbar set magical_control:player.gui.$(id) visible true
$bossbar set magical_control:player.gui.$(id) name [  {    "translate": "space.-245",    "font": "default"  },{      "text": "HP : $(Health) / $(MaxHealth)",      "color": "red",      "font": "rpg:hp",      "bold": true,      "italic": false    },  {    "translate": "offset.-74",    "with": [{      "text": "MP : $(Mana) / $(MaxMana)",      "color": "blue",      "font": "rpg:mp",      "bold": true,      "italic": false    }]  },  {    "translate": "offset.-150",    "with": [      {        "text": "\ue$(ManaProportion)",        "font": "rpg:bar"      }    ],    "color": "white",    "font": "default"  },  {    "translate": "offset.-252",    "with": [      {        "text": "\ua$(HealthProportion)",        "font": "rpg:bar"      }    ]  }]