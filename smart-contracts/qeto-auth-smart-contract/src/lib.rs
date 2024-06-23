#![no_std]
use gstd::{ async_main, collections::HashMap, msg, prelude::*, ActorId };
use io::*;

static mut STATE: Option<CustomStruct> = None;

#[derive(Clone, Default)]
pub struct CustomStruct {
    pub users: HashMap<ActorId, u128>,
    pub nft_program_id: ActorId,
    pub admins: Vec<ActorId>,
}

impl CustomStruct {
    async fn update_nft_program_Id(&mut self, actorId: ActorId) -> Result<Events, Errors> {
        self.nft_program_id = actorId;

        Ok(Events::UpdatedNFTProgramIdUserEvent("NFT ProgramId updated".to_string()))
    }
    async fn registerUser(&mut self, userid: u128) -> Result<Events, Errors> {
        self.users.entry(msg::source()).or_insert(userid);

        Ok(Events::RegisteredUserEvent("User registered".to_string()))
    }
    async fn generateToken(&mut self, token_metadata: TokenMetadata) -> Result<Events, Errors> {
        let user = *self.users.get(&msg::source()).expect("User not found");

        let payload = NftAction::Mint {
            to: msg::source(),
            token_metadata: token_metadata,
        };
        let _ = msg::send(self.nft_program_id, payload, 0);

        Ok(Events::GeneratedTokenEvent("Token Generated".to_string()))
    }
    async fn burnToken(&mut self, token_id: TokenId) -> Result<Events, Errors> {
        let user = *self.users.get(&msg::source()).expect("User not found");

        let payload = NftAction::Burn {
            token_id: token_id,
        };
        let _ = msg::send(self.nft_program_id, payload, 0);

        Ok(Events::BurntTokenEvent("Token Burnt".to_string()))
    }
}

#[no_mangle]
extern "C" fn init() {
    let config: InitStruct = msg::load().expect("Unable to decode InitStruct");

    if config.ft_program_id.is_zero() {
        panic!("InitStruct program address can't be 0");
    }

    let state = CustomStruct {
        ..Default::default()
    };

    unsafe {
        STATE = Some(state);
    }
}

#[async_main]
async fn main() {
    let action: Actions = msg::load().expect("Could not load Action");

    let state: &mut CustomStruct = unsafe {
        STATE.as_mut().expect("The contract is not initialized")
    };

    let reply = match action {
        Actions::UpdateNFTProgramIdUserAction(input) => state.update_nft_program_Id(input).await,
        Actions::RegisterUserAction(input) => state.registerUser(input).await,
        Actions::GenerateTokenAction(input) => state.generateToken(input).await,
        Actions::BurnTokenAction(input) => state.burnToken(input).await,
    };
    msg::reply(reply, 0).expect("Error in sending a reply");
}

#[no_mangle]
extern "C" fn state() {
    let state = unsafe { STATE.take().expect("Unexpected error in taking state") };

    msg::reply::<IoCustomStruct>(state.into(), 0).expect(
        "Failed to encode or reply with `<ContractMetadata as Metadata>::State` from `state()`"
    );
}

impl From<CustomStruct> for IoCustomStruct {
    fn from(value: CustomStruct) -> Self {
        let CustomStruct { users, nft_program_id, admins } = value;

        let users = users
            .iter()
            .map(|(k, v)| (*k, v.clone()))
            .collect();

        Self { users, nft_program_id, admins }
    }
}
