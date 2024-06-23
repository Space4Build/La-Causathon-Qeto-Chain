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
    type State = InOut<StateQuery, StateReply>;
}

#[derive(Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct InitStruct {
    pub ft_program_id: ActorId,
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Actions {
    UpsertStarReviewsAction(StarReviewStruct),
    UpsertPriceReviewsAction(PriceReviewStruct),
}

#[derive(Debug, Decode, Encode, Clone, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct StarReviewStruct {
    pub storeId: u32,
    pub productQualityStars: u32,
    pub customerAttentionStars: u32,
    pub waitingTimeStars: u32,
    pub averageStars: u32,
    pub comments: String,
    pub userId: u32,
    pub fullName: String,
}

#[derive(Debug, Decode, Encode, Clone, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct PriceReviewStruct {
    pub productId: u32,
    pub platformProductPrice: u32,
    pub realProductPrice: u32,
    pub dateTime: String,
    pub userId: u32,
    pub fullName: String,
}

#[derive(Encode, Decode, TypeInfo)]
pub enum StateQuery {
    GetStarReviewsByStoreId {
        storeId: u32,
    },
    GetPriceReviewsByProductId {
        productId: u32,
    },
}

#[derive(Encode, Decode, TypeInfo)]
pub enum StateReply {
    GetStarReviewsByStoreId(Vec<StarReviewStruct>),
    GetPriceReviewsByProductId(Vec<PriceReviewStruct>),
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Events {
    UpsertedStarReviewsEvent(String),
    UpsertedPriceReviewsEvent(String),
}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub enum Errors {}

#[derive(Debug, Decode, Encode, TypeInfo)]
#[codec(crate = gstd::codec)]
#[scale_info(crate = gstd::scale_info)]
pub struct State {
    pub starReviews: Vec<StarReviewStruct>,
    pub priceReviews: Vec<PriceReviewStruct>,
}
