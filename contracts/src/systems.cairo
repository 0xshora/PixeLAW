#[system]
mod add_pixel {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;

    use pixelaw::components::Position;
    use pixelaw::components::Owner;
    use pixelaw::components::StartTime;
    use pixelaw::components::Color;

    fn execute(
        ctx: Context
        x: u64,
        y: u64,
    ) {
        let player_id: felt252 = ctx.origin.info();
        
        set !(
            ctx.world,
            ctx.origin.into(),
            (
                Owner { address: player_id },
                Position { x: x, y: y },
                StartTime { timestamp: starknet::get_block_timestamp() },
                Color { argb: 0 },
            )
        );
        return ();
    }
}

#[system]
mod change_color {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;

    use pixelaw::components::Position;
    use pixelaw::components::Owner;
    use pixelaw::components::StartTime;
    use pixelaw::components::Color;

    fn execute(ctx: Context) {
        // TODO
        return ();
    }
}
