const express = require('express');
const cors = require('cors');
const {
  smartContractAuth,
  smartContractStarandPricesReviews,
  smartContractCoupons,
} = require('./metadatas');
const {
  programAuth,
  programStarAndProductReviews,
  programCoupons,
} = require('./programs');

const { GearKeyring, GearApi, ProgramMetadata } = require('@gear-js/api');

const gasLimit = 9899819245;
const mnemonic = process.env.mnemonic;
const app = express();

app.use(cors());
app.use(express.json());

app.post('/smartapi/v1/store/reviews', async (req, res) => {
  const body = req.body;

  const keyring = await GearKeyring.fromMnemonic(mnemonic, 'name');
  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractStarandPricesReviews);

  try {
    const message = {
      destination: programStarAndProductReviews,
      payload: {
        upsertstarreviewsaction: {
          storeId: body.storeId,
          productQualityStars: body.productQualityStars,
          customerAttentionStars: body.customerAttentionStars,
          waitingTimeStars: body.waitingTimeStars,
          averageStars: body.averageStars,
          comments: body.comments,
          userId: body.userId,
          fullName: body.fullName,
        },
      },
      gasLimit,
      value: 0,
    };
    const extrinsic = await gearApi.message.send(message, meta);
    await extrinsic.signAndSend(keyring);
    res.status(200).send({
      message: 'Store review saved in the block chain',
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.post('/smartapi/v1/product/reviews', async (req, res) => {
  const body = req.body;

  const keyring = await GearKeyring.fromMnemonic(mnemonic, 'name');
  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractStarandPricesReviews);

  try {
    const message = {
      destination: programStarAndProductReviews,
      payload: {
        UpsertPriceReviewsAction: {
          productId: body.productId,
          platformProductPrice: body.platformProductPrice,
          realProductPrice: body.realProductPrice,
          dateTime: body.dateTime,
          userId: body.userId,
          fullName: body.fullName,
        },
      },
      gasLimit,
      value: 0,
    };
    const extrinsic = await gearApi.message.send(message, meta);
    await extrinsic.signAndSend(keyring);
    res.status(200).send({
      message: 'Store review saved in the block chain',
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.get('/smartapi/v1/store/:storeId/reviews', async (req, res) => {
  if (!req.params.storeId) {
    res.status(400).send({ message: 'StoreId is required' });
  }

  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractStarandPricesReviews);

  try {
    const state = await gearApi.programState.read(
      {
        programId: programStarAndProductReviews,
        payload: {
          GetStarReviewsByStoreId: {
            storeId: req.params.storeId,
          },
        },
      },
      meta
    );

    res.status(200).send({
      message: 'Star review stored in the block chain',
      data: state.toHuman(),
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.get('/smartapi/v1/product/:productId/reviews', async (req, res) => {
  if (!req.params.productId) {
    res.status(400).send({ message: 'ProductId is required' });
  }

  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractStarandPricesReviews);

  try {
    const state = await gearApi.programState.read(
      {
        programId: programStarAndProductReviews,
        payload: {
          GetPriceReviewsByProductId: {
            productId: req.params.productId,
          },
        },
      },
      meta
    );

    res.status(200).send({
      message: 'Star review stored in the block chain',
      data: state.toHuman(),
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.post('/smartapi/v1/user/generate-token', async (req, res) => {
  const body = req.body;

  const keyring = await GearKeyring.fromMnemonic(mnemonic, 'name');
  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractAuth);

  try {
    const message = {
      destination: programAuth,
      payload: {
        GenerateTokenAction: {
          name: body.name,
          description: body.description,
          media: body.media,
          reference: body.reference,
        },
      },
      gasLimit,
      value: 0,
    };
    const extrinsic = await gearApi.message.send(message, meta);
    await extrinsic.signAndSend(keyring);
    res.status(200).send({
      message: 'Store review saved in the block chain',
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.get('/smartapi/v1/user/:userId/get-tokens', async (req, res) => {
  if (!req.params.userId) {
    res.status(400).send({ message: 'UserId is required' });
  }

  const gearApi = await GearApi.create({
    providerAddress: 'wss://testnet.vara.network',
  });
  const meta = ProgramMetadata.from(smartContractCoupons);
  const owner =
    '0xd068be5cfc126298ff2e11ad07a61ad425fa627101fc4966466dc0d2b465883a';

  try {
    const state = await gearApi.programState.read(
      {
        programId: programCoupons,
        payload: {
          GetCoupons: {
            owner,
          },
        },
      },
      meta
    );

    res.status(200).send({
      message: 'Star review stored in the block chain',
      data: state.toHuman(),
    });
  } catch (error) {
    console.error(`${error.name}: ${error.message}`);
    res.status(500).send({
      message: 'Error',
    });
  }
});

app.listen(3000, () => {
  console.log('Server up');
});
