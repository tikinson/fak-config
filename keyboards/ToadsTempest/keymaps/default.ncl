let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

let kc = tap.reg.kc in
let md = hold.reg.mod in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in
let MO = hold.reg.layer in

{
    virtual_keys = [],
    layers = [
        [   # Layer 0 qwerty
            kc.TAB,    kc.Q,    kc.W,    kc.E,    kc.R,    kc.T,    kc.Y,    kc.U,    kc.I,    kc.O,    kc.P,    kc.ESC,
            md.lsft,   kc.A,    kc.S,    kc.D,    kc.F,    kc.G,    kc.H,    kc.J,    kc.K,    kc.L,    kc.SCLN,  kc.QUOT,
            md.lctl,   kc.Z,    kc.X,    kc.C,    kc.V,    kc.B,    kc.N,    kc.M,    kc.",",  kc.".",  kc.SLSH, md.lalt,
            kc.SPC,    MO 1,    md.lgui, kc.BSPC, MO 2,    kc.ENT,
        ],

        [   # Layer 1 func
            kc.F1,    kc.F2,   kc.F3,    kc.F4,   kc.F5,   kc.F6,   kc.F7,   kc.F8,   kc.F9,    kc.F10,  kc.F11,  kc.F12,
            md.lsft,  kc.HOME, kc.PGDN,  kc.PGUP, kc.END,  TTTT,    TTTT,    kc.LEFT, kc.DOWN,  kc.UP,   kc.RGHT, TTTT,
            md.lctl,  TTTT,    TTTT,     TTTT,    TTTT,    TTTT,    TTTT,    TTTT,    TTTT,     TTTT,    TTTT,    TTTT,
            kc.SPC,   XXXX,    md.lgui,  kc.BSPC, XXXX,    kc.ENT,
        ],

        [   # Layer 2 num
            kc.TAB,   kc.N1,   kc.N2,     kc.N3,   kc.N4,  kc.N5,   kc.N6,   kc.N7,   kc.N8,    kc.N9,    kc.N0,  kc.ESC,  
            md.lsft,  TTTT,    TTTT,      TTTT,    TTTT,   TTTT,    kc.MINS, kc.EQL,  kc.GRV,   kc.LBRC,  kc.RBRC,kc.BSLS,
            md.lctl,  TTTT,    TTTT,      TTTT,    TTTT,   TTTT,    TTTT,    TTTT,    TTTT,     TTTT,     TTTT,   TTTT,
            kc.SPC,   XXXX,    md.lgui,  kc.BSPC, XXXX,    kc.ENT,
        ]
    ]
}