module transfer_address::PICH {
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    struct Bank has key {
        id: UID,
        name: vector<u8>,
        balance: u128,  //number - usignInteger
    }

    fun init (ctx: &mut TxContext){
        let bank = Bank {
            id: object::new(ctx),
            name: b"MB Bank",
            balance: 1_000_000
        };
    transfer::transfer(bank, ctx_context::sender(ctx));

    }

}