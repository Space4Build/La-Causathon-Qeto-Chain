#![no_std]

use gmeta::{ In, InOut, Metadata, Out };
use gstd::{ prelude::*, ActorId };

pub struct ProgramMetadata;

impl Metadata for ProgramMetadata {
    type Init = In<InitStruct>;
    type Handle = InOut<Actions, Result<Events, Errors>>;
    type Others = ();
    type Reply = ();
    type Signal = ();
    type State = Out<IoCustomStruct>;
}

#[derive(Default, Debug, Encode, Decode, TypeInfo, Clone)]
pub struct TokenMetadata {
    pub name: String,
    pub description: String,
    pub media: String,
    pub reference: String,
}

#[derive(Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct InitStruct {
    pub ft_program_id: ActorId,
}

pub type TokenId = u128;

#[derive(Debug, Encode, Decode, TypeInfo)]
pub enum NftAction {
    Mint {
        to: ActorId,
        token_metadata: TokenMetadata,
    },
    Burn {
        token_id: TokenId,
    },
    Transfer {
        to: ActorId,
        token_id: TokenId,
    },
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Actions {
    UpdateNFTProgramIdUserAction(ActorId),
    RegisterUserAction(u128),
    GenerateTokenAction(TokenMetadata),
    BurnTokenAction(TokenId),
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Events {
    UpdatedNFTProgramIdUserEvent(String),
    RegisteredUserEvent(String),
    GeneratedTokenEvent(String),
    BurntTokenEvent(String),
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Errors {}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct IoCustomStruct {
    pub users: Vec<(ActorId, u128)>,
    pub nft_program_id: ActorId,
    pub admins: Vec<ActorId>,
}
