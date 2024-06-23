#![no_std]
use gstd::{ async_main, collections::HashMap, msg, prelude::*, ActorId };
use io::*;

static mut STATE: Option<CustomStruct> = None;

#[derive(Clone, Default)]
pub struct CustomStruct {
    pub starReviews: Vec<StarReviewStruct>,
    pub priceReviews: Vec<PriceReviewStruct>,
}

impl CustomStruct {
    async fn upserStarReviews(&mut self, input: StarReviewStruct) -> Result<Events, Errors> {
        self.starReviews.push(StarReviewStruct {
            storeId: input.storeId,
            productQualityStars: input.productQualityStars,
            customerAttentionStars: input.customerAttentionStars,
            waitingTimeStars: input.waitingTimeStars,
            averageStars: input.averageStars,
            comments: input.comments,
            userId: input.userId,
            fullName: input.fullName,
        });

        Ok(Events::UpsertedStarReviewsEvent("Star Review updated successfully".to_string()))
    }

    async fn upsertPriceReviews(&mut self, input: PriceReviewStruct) -> Result<Events, Errors> {
        self.priceReviews.push(PriceReviewStruct {
            productId: input.productId,
            platformProductPrice: input.platformProductPrice,
            realProductPrice: input.realProductPrice,
            dateTime: input.dateTime,
            userId: input.userId,
            fullName: input.fullName,
        });

        Ok(Events::UpsertedPriceReviewsEvent("Price Review updated successfully".to_string()))
    }
}

#[no_mangle]
unsafe extern fn init() {
    let config: InitStruct = msg::load().expect("Unable to decode InitStruct");

    if config.ft_program_id.is_zero() {
        panic!("InitStruct program address can't be 0");
    }

    let state = CustomStruct {
        ..Default::default()
    };
    STATE = Some(state);
}

#[async_main]
async fn main() {
    let action: Actions = msg::load().expect("Could not load Action");
    let state = unsafe { STATE.as_mut().expect("The contract is not initialized") };
    let reply = match action {
        Actions::UpsertStarReviewsAction(input) => state.upserStarReviews(input).await,
        Actions::UpsertPriceReviewsAction(input) => state.upsertPriceReviews(input).await,
    };
    msg::reply(reply, 0).expect("Error in sending a reply");
}

#[no_mangle]
extern fn state() {
    let state = unsafe { STATE.take().expect("Unexpected error in taking state") };
    let query: StateQuery = msg::load().expect("Unable to load the state query");
    match query {
        StateQuery::GetStarReviewsByStoreId { storeId } => {
            let reviews = state.starReviews
                .into_iter()
                .filter(|v| v.storeId == storeId)
                .collect();

            msg::reply(StateReply::GetStarReviewsByStoreId(reviews), 0).expect(
                "Unable to share the state"
            );
        }
        StateQuery::GetPriceReviewsByProductId { productId } => {
            let reviews = state.priceReviews
                .into_iter()
                .filter(|v| v.productId == productId)
                .collect();

            msg::reply(StateReply::GetPriceReviewsByProductId(reviews), 0).expect(
                "Unable to share the state"
            );
        }
    }
}

impl From<CustomStruct> for State {
    fn from(value: CustomStruct) -> Self {
        let CustomStruct { starReviews, priceReviews } = value;

        Self {
            starReviews,
            priceReviews,
        }
    }
}
