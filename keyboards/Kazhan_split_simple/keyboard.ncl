let { RowToColKey, ColToRowKey, PeripheralSideKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

let side_central = {
    mcu = CH552T,
    matrix = {
        rows = [32, 15, 12, 13],
        cols = [16, 17]
    },
    split.channel = CH552T.features.uart_30_31,
} in

let side_periph = {
    mcu = CH552T,
    matrix = {
        rows = [32, 15, 12, 13],
        cols = [16, 17]
    },
    split.channel = CH552T.features.uart_30_31,
    keys = 
        let C = ColToRowKey in
        let R = RowToColKey in
        [
            C 0 0, R 0 0, C 1 0, R 1 0, R 1 3,
            C 0 1, R 0 1, C 1 1, R 1 1, R 1 2,
            C 0 2, R 0 2, C 1 2, C 1 3,
            C 0 3, R 0 3,
        ],
} in

side_central & {
    usb_dev = {
        vendor_id = 21681, #0x54B1
        product_id = 2,
        product_ver = 46193, #0xB471 kazhan means bat ^^
    },
    split.peripheral = side_periph,
    keys = 
        let C = ColToRowKey in
        let R = RowToColKey in
        let S = PeripheralSideKey in
        [
            C 0 3, C 0 0, R 0 0, C 1 0, R 1 0,      S 0,  S 1,  S 2,  S 3,  S 4,
            C 0 2, C 0 1, R 0 1, C 1 1, R 1 1,      S 5,  S 6,  S 7,  S 8,  S 9,
                   R 0 3, R 0 2, C 1 2, R 1 2,      S 10, S 11, S 12, S 13,
                                 C 1 3, R 1 3,      S 14, S 15,
        ],
}