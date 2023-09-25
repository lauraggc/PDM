const String CRYPTO_EXCHANGE_RATES = '''{
	"rates": {
		"btc": {
			"name": "Bitcoin",
			"unit": "BTC",
			"value": 1.0,
			"type": "crypto"
		},
		"eth": {
			"name": "Ether",
			"unit": "ETH",
			"value": 13.448,
			"type": "crypto"
		},
		"ltc": {
			"name": "Litecoin",
			"unit": "LTC",
			"value": 252.79,
			"type": "crypto"
		},
		"bch": {
			"name": "Bitcoin Cash",
			"unit": "BCH",
			"value": 69.913,
			"type": "crypto"
		},
		"bnb": {
			"name": "Binance Coin",
			"unit": "BNB",
			"value": 107.464,
			"type": "crypto"
		},
		"eos": {
			"name": "EOS",
			"unit": "EOS",
			"value": 9396.277,
			"type": "crypto"
		},
		"xrp": {
			"name": "XRP",
			"unit": "XRP",
			"value": 40246.212,
			"type": "crypto"
		},
		"xlm": {
			"name": "Lumens",
			"unit": "XLM",
			"value": 134483.892,
			"type": "crypto"
		},
		"link": {
			"name": "Chainlink",
			"unit": "LINK",
			"value": 1605.813,
			"type": "crypto"
		},
		"dot": {
			"name": "Polkadot",
			"unit": "DOT",
			"value": 1461.254,
			"type": "crypto"
		},
		"yfi": {
			"name": "Yearn.finance",
			"unit": "YFI",
			"value": 1.322,
			"type": "crypto"
		},
		"usd": {
			"name": "US Dollar",
			"unit": "\$",
			"value": 46856.602,
			"type": "fiat"
		},
		"aed": {
			"name": "United Arab Emirates Dirham",
			"unit": "DH",
			"value": 172113.671,
			"type": "fiat"
		},
		"ars": {
			"name": "Argentine Peso",
			"unit": "\$",
			"value": 4590400.752,
			"type": "fiat"
		},
		"aud": {
			"name": "Australian Dollar",
			"unit": "A\$",
			"value": 63452.742,
			"type": "fiat"
		},
		"bdt": {
			"name": "Bangladeshi Taka",
			"unit": "৳",
			"value": 3993145.32,
			"type": "fiat"
		},
		"bhd": {
			"name": "Bahraini Dinar",
			"unit": "BD",
			"value": 17664.376,
			"type": "fiat"
		},
		"bmd": {
			"name": "Bermudian Dollar",
			"unit": "\$",
			"value": 46856.602,
			"type": "fiat"
		},
		"brl": {
			"name": "Brazil Real",
			"unit": "R\$",
			"value": 243560.618,
			"type": "fiat"
		},
		"cad": {
			"name": "Canadian Dollar",
			"unit": "CA\$",
			"value": 59228.853,
			"type": "fiat"
		},
		"chf": {
			"name": "Swiss Franc",
			"unit": "Fr.",
			"value": 42940.093,
			"type": "fiat"
		},
		"clp": {
			"name": "Chilean Peso",
			"unit": "CLP\$",
			"value": 37176028.222,
			"type": "fiat"
		},
		"cny": {
			"name": "Chinese Yuan",
			"unit": "¥",
			"value": 302107.942,
			"type": "fiat"
		},
		"czk": {
			"name": "Czech Koruna",
			"unit": "Kč",
			"value": 1006995.238,
			"type": "fiat"
		},
		"dkk": {
			"name": "Danish Krone",
			"unit": "kr.",
			"value": 294470.363,
			"type": "fiat"
		},
		"eur": {
			"name": "Euro",
			"unit": "€",
			"value": 39598.608,
			"type": "fiat"
		},
		"gbp": {
			"name": "British Pound Sterling",
			"unit": "£",
			"value": 33828.311,
			"type": "fiat"
		},
		"hkd": {
			"name": "Hong Kong Dollar",
			"unit": "HK\$",
			"value": 364309.52,
			"type": "fiat"
		},
		"huf": {
			"name": "Hungarian Forint",
			"unit": "Ft",
			"value": 13879394.151,
			"type": "fiat"
		},
		"idr": {
			"name": "Indonesian Rupiah",
			"unit": "Rp",
			"value": 666553122.035,
			"type": "fiat"
		},
		"ils": {
			"name": "Israeli New Shekel",
			"unit": "₪",
			"value": 150185.718,
			"type": "fiat"
		},
		"inr": {
			"name": "Indian Rupee",
			"unit": "₹",
			"value": 3444499.116,
			"type": "fiat"
		},
		"jpy": {
			"name": "Japanese Yen",
			"unit": "¥",
			"value": 5143964.651,
			"type": "fiat"
		},
		"krw": {
			"name": "South Korean Won",
			"unit": "₩",
			"value": 54703892.262,
			"type": "fiat"
		},
		"kwd": {
			"name": "Kuwaiti Dinar",
			"unit": "KD",
			"value": 14089.358,
			"type": "fiat"
		},
		"lkr": {
			"name": "Sri Lankan Rupee",
			"unit": "Rs",
			"value": 9361861.225,
			"type": "fiat"
		},
		"mmk": {
			"name": "Burmese Kyat",
			"unit": "K",
			"value": 77144528.229,
			"type": "fiat"
		},
		"mxn": {
			"name": "Mexican Peso",
			"unit": "MX\$",
			"value": 933074.263,
			"type": "fiat"
		},
		"myr": {
			"name": "Malaysian Ringgit",
			"unit": "RM",
			"value": 194220.616,
			"type": "fiat"
		},
		"ngn": {
			"name": "Nigerian Naira",
			"unit": "₦",
			"value": 19276806.164,
			"type": "fiat"
		},
		"nok": {
			"name": "Norwegian Krone",
			"unit": "kr",
			"value": 405830.889,
			"type": "fiat"
		},
		"nzd": {
			"name": "New Zealand Dollar",
			"unit": "NZ\$",
			"value": 65796.884,
			"type": "fiat"
		},
		"php": {
			"name": "Philippine Peso",
			"unit": "₱",
			"value": 2335851.196,
			"type": "fiat"
		},
		"pkr": {
			"name": "Pakistani Rupee",
			"unit": "₨",
			"value": 7873803.917,
			"type": "fiat"
		},
		"pln": {
			"name": "Polish Zloty",
			"unit": "zł",
			"value": 180011.351,
			"type": "fiat"
		},
		"rub": {
			"name": "Russian Ruble",
			"unit": "₽",
			"value": 3416666.294,
			"type": "fiat"
		},
		"sar": {
			"name": "Saudi Riyal",
			"unit": "SR",
			"value": 175750.165,
			"type": "fiat"
		},
		"sek": {
			"name": "Swedish Krona",
			"unit": "kr",
			"value": 402971.699,
			"type": "fiat"
		},
		"sgd": {
			"name": "Singapore Dollar",
			"unit": "S\$",
			"value": 62824.395,
			"type": "fiat"
		},
		"thb": {
			"name": "Thai Baht",
			"unit": "฿",
			"value": 1530336.629,
			"type": "fiat"
		},
		"try": {
			"name": "Turkish Lira",
			"unit": "₺",
			"value": 395853.337,
			"type": "fiat"
		},
		"twd": {
			"name": "New Taiwan Dollar",
			"unit": "NT\$",
			"value": 1296180.177,
			"type": "fiat"
		},
		"uah": {
			"name": "Ukrainian hryvnia",
			"unit": "₴",
			"value": 1251938.876,
			"type": "fiat"
		},
		"vef": {
			"name": "Venezuelan bolívar fuerte",
			"unit": "Bs.F",
			"value": 4691.751,
			"type": "fiat"
		},
		"vnd": {
			"name": "Vietnamese đồng",
			"unit": "₫",
			"value": 1066503123.738,
			"type": "fiat"
		},
		"zar": {
			"name": "South African Rand",
			"unit": "R",
			"value": 664530.407,
			"type": "fiat"
		},
		"xdr": {
			"name": "IMF Special Drawing Rights",
			"unit": "XDR",
			"value": 32906.782,
			"type": "fiat"
		},
		"xag": {
			"name": "Silver - Troy Ounce",
			"unit": "XAG",
			"value": 1938.306,
			"type": "commodity"
		},
		"xau": {
			"name": "Gold - Troy Ounce",
			"unit": "XAU",
			"value": 26.057,
			"type": "commodity"
		},
		"bits": {
			"name": "Bits",
			"unit": "μBTC",
			"value": 1000000.0,
			"type": "crypto"
		},
		"sats": {
			"name": "Satoshi",
			"unit": "sats",
			"value": 100000000.0,
			"type": "crypto"
		}
	}
}''';
const String CRYPTO_EXCHANGES = '''[
	{
		"id": "binance",
		"name": "Binance",
		"year_established": 2017,
		"country": "Cayman Islands",
		"description": "",
		"url": "https://www.binance.com/",
		"image": "https://assets.coingecko.com/markets/images/52/small/binance.jpg?1519353250",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 1,
		"trade_volume_24h_btc": 802479.9024515663,
		"trade_volume_24h_btc_normalized": 802479.9024515663
	},
	{
		"id": "gdax",
		"name": "Coinbase Exchange",
		"year_established": 2012,
		"country": "United States",
		"description": "",
		"url": "https://www.coinbase.com",
		"image": "https://assets.coingecko.com/markets/images/23/small/Coinbase_Coin_Primary.png?1621471875",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 2,
		"trade_volume_24h_btc": 153764.45303231137,
		"trade_volume_24h_btc_normalized": 153764.45303231137
	},
	{
		"id": "crypto_com",
		"name": "Crypto.com Exchange",
		"year_established": 2019,
		"country": "Cayman Islands",
		"description": "Crypto.com Exchange is the best place to trade crypto, with deep liquidity, low fees and best execution prices, users can trade major cryptocurrencies like Bitcoin, Ethereum, and many more and receive great CRO-powered rewards",
		"url": "https://crypto.com/exchange",
		"image": "https://assets.coingecko.com/markets/images/589/small/Crypto.jpg?1629861084",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 3,
		"trade_volume_24h_btc": 88434.00732893018,
		"trade_volume_24h_btc_normalized": 88434.00732893018
	},
	{
		"id": "ftx_spot",
		"name": "FTX",
		"year_established": 2019,
		"country": "Antigua and Barbuda",
		"description": "",
		"url": "https://ftx.com/",
		"image": "https://assets.coingecko.com/markets/images/451/small/F.png?1609051590",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 4,
		"trade_volume_24h_btc": 86861.84342780778,
		"trade_volume_24h_btc_normalized": 86861.84342780778
	},
	{
		"id": "kucoin",
		"name": "KuCoin",
		"year_established": 2014,
		"country": "Seychelles",
		"description": "",
		"url": "https://www.kucoin.com/",
		"image": "https://assets.coingecko.com/markets/images/61/small/kucoin.jpg?1591610627",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 5,
		"trade_volume_24h_btc": 50694.9686020796,
		"trade_volume_24h_btc_normalized": 50694.9686020796
	},
	{
		"id": "binance_us",
		"name": "Binance US",
		"year_established": 2019,
		"country": "United States",
		"description": "",
		"url": "https://www.binance.us/en",
		"image": "https://assets.coingecko.com/markets/images/469/small/Binance.png?1568875842",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 6,
		"trade_volume_24h_btc": 44407.49292773146,
		"trade_volume_24h_btc_normalized": 44407.49292773146
	},
	{
		"id": "kraken",
		"name": "Kraken",
		"year_established": 2011,
		"country": "United States",
		"description": "",
		"url": "https://r.kraken.com/Q1m9x",
		"image": "https://assets.coingecko.com/markets/images/29/small/kraken.jpg?1584251255",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 7,
		"trade_volume_24h_btc": 39512.48101229163,
		"trade_volume_24h_btc_normalized": 39512.48101229163
	},
	{
		"id": "bitfinex",
		"name": "Bitfinex",
		"year_established": 2014,
		"country": "British Virgin Islands",
		"description": "",
		"url": "https://www.bitfinex.com",
		"image": "https://assets.coingecko.com/markets/images/4/small/BItfinex.png?1615895883",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 8,
		"trade_volume_24h_btc": 20767.04623980794,
		"trade_volume_24h_btc_normalized": 20767.04623980794
	},
	{
		"id": "gate",
		"name": "Gate.io",
		"year_established": null,
		"country": "Hong Kong",
		"description": "Gate was established in 2013, and it is the top 10 exchanges in the world in terms of authentic trading volume. It is also the first choice of over 8 million registered customers, covering 130+ countries worldwide, as we are providing the most comprehensive digital asset solutions.",
		"url": "https://gate.io/",
		"image": "https://assets.coingecko.com/markets/images/60/small/gateio.jpg?1519793974",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 9,
		"trade_volume_24h_btc": 20059.34890653026,
		"trade_volume_24h_btc_normalized": 20059.34890653026
	},
	{
		"id": "gemini",
		"name": "Gemini",
		"year_established": 2014,
		"country": "United States",
		"description": "",
		"url": "https://gemini.sjv.io/bZ49k",
		"image": "https://assets.coingecko.com/markets/images/50/small/gemini.png?1605704107",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 10,
		"trade_volume_24h_btc": 5912.874029590924,
		"trade_volume_24h_btc_normalized": 5912.874029590924
	},
	{
		"id": "bittrex",
		"name": "Bittrex",
		"year_established": 2014,
		"country": "United States",
		"description": "",
		"url": "https://bittrex.com/",
		"image": "https://assets.coingecko.com/markets/images/10/small/BG-color-250x250_icon.png?1596167574",
		"has_trading_incentive": false,
		"trust_score": 10,
		"trust_score_rank": 11,
		"trade_volume_24h_btc": 4373.407069543567,
		"trade_volume_24h_btc_normalized": 4373.407069543567
	},
	{
		"id": "okex",
		"name": "OKEx",
		"year_established": 2013,
		"country": "Belize",
		"description": "",
		"url": "https://www.okex.com",
		"image": "https://assets.coingecko.com/markets/images/96/small/okEX.jpg?1519349636",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 12,
		"trade_volume_24h_btc": 204438.9536084108,
		"trade_volume_24h_btc_normalized": 204438.9536084108
	},
	{
		"id": "bitrue",
		"name": "Bitrue",
		"year_established": 2018,
		"country": "Singapore",
		"description": "",
		"url": "https://www.bitrue.com/",
		"image": "https://assets.coingecko.com/markets/images/254/small/bitrue-exchange.jpg?1537878894",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 13,
		"trade_volume_24h_btc": 79175.46602090908,
		"trade_volume_24h_btc_normalized": 79175.46602090908
	},
	{
		"id": "bitmart",
		"name": "BitMart",
		"year_established": 2017,
		"country": "Cayman Islands",
		"description": "",
		"url": "https://www.bitmart.com/en",
		"image": "https://assets.coingecko.com/markets/images/239/small/Bitmart.png?1628066397",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 14,
		"trade_volume_24h_btc": 41219.06608614808,
		"trade_volume_24h_btc_normalized": 41219.06608614808
	},
	{
		"id": "btcturk",
		"name": "BtcTurk PRO",
		"year_established": 2013,
		"country": "Turkey",
		"description": "",
		"url": "https://pro.btcturk.com/",
		"image": "https://assets.coingecko.com/markets/images/223/small/BTCTurk-exchange.jpg?1536726120",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 15,
		"trade_volume_24h_btc": 13976.297809388745,
		"trade_volume_24h_btc_normalized": 13976.297809388745
	},
	{
		"id": "bitstamp",
		"name": "Bitstamp",
		"year_established": 2013,
		"country": "United Kingdom",
		"description": null,
		"url": "https://www.bitstamp.net/",
		"image": "https://assets.coingecko.com/markets/images/9/small/bitstamp.jpg?1519627979",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 16,
		"trade_volume_24h_btc": 9082.330582839617,
		"trade_volume_24h_btc_normalized": 9082.330582839617
	},
	{
		"id": "bithumb_global",
		"name": "Bithumb Global",
		"year_established": 2019,
		"country": "Seychelles",
		"description": "",
		"url": "https://bithumb.pro/",
		"image": "https://assets.coingecko.com/markets/images/405/small/bithumbglobal.jpg?1599652253",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 17,
		"trade_volume_24h_btc": 6768.285531977127,
		"trade_volume_24h_btc_normalized": 6768.285531977127
	},
	{
		"id": "dextrade",
		"name": "Dex-Trade",
		"year_established": 2019,
		"country": "United Kingdom",
		"description": "Dex-Trade is young but the most technical equiped crypto exchange, it offers traders easy-to-use interface and transactions safity. Since 2018, Dex-Trade team has the most fully range of security measures and security risk control measures in the industry. Dex-Trade welcomes global users and continues to expands digital currency in various countries to provide users with global trading opportunities. High-quality currencies are listed on Dex-Trade to offer traders comprehensive range of digital assets. By your side 24 hours a day, our support team will assist you with any issue or question you may have.",
		"url": "https://dex-trade.com/",
		"image": "https://assets.coingecko.com/markets/images/380/small/Dex-Trade_logo_new.png?1599629803",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 18,
		"trade_volume_24h_btc": 5417.265715255447,
		"trade_volume_24h_btc_normalized": 5417.265715255447
	},
	{
		"id": "bitmax",
		"name": "AscendEX (BitMax)",
		"year_established": 2018,
		"country": "Singapore",
		"description": "AscendEX (formerly BitMax) is a leading global digital asset financial platform founded by a group of Wall Street quantitative trading veterans in 2018, building on core value of “Efficiency, Resilience and Transparency.” Driven by its continuous innovative product development and early-mover advantage in strategic alignment with the leading projects from DeFi ecosystem, AscendEX offers trading services across over 200 trading pairs across cash, margin, and futures products, in particular margin trading of over 50 tokens in cross-asset collateral mode and futures trading in both cross-asset and isolated margin modes.",
		"url": "https://ascendex.com/en/global-digital-asset-platform",
		"image": "https://assets.coingecko.com/markets/images/277/small/AscendEX.png?1616471675",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 19,
		"trade_volume_24h_btc": 5045.258213015592,
		"trade_volume_24h_btc_normalized": 5045.258213015592
	},
	{
		"id": "bitkub",
		"name": "Bitkub",
		"year_established": 2018,
		"country": "Thailand",
		"description": "",
		"url": "https://www.bitkub.com",
		"image": "https://assets.coingecko.com/markets/images/249/small/bitkub.png?1537180687",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 20,
		"trade_volume_24h_btc": 3971.202726590623,
		"trade_volume_24h_btc_normalized": 3971.202726590623
	},
	{
		"id": "bitbank",
		"name": "Bitbank",
		"year_established": 2016,
		"country": "Japan",
		"description": "",
		"url": "https://bitbank.cc/",
		"image": "https://assets.coingecko.com/markets/images/122/small/bitbank.jpg?1521186278",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 21,
		"trade_volume_24h_btc": 3869.827820517632,
		"trade_volume_24h_btc_normalized": 3869.827820517632
	},
	{
		"id": "btse",
		"name": "BTSE",
		"year_established": 2018,
		"country": "United Arab Emirates",
		"description": "BTSE is your Bitcoin futures exchange to trade with confidence and ease.BTSE‘s mission is to make institutional-grade security and stability available to every crypto trader.BTSE’s platform is built to facilitate reliable 24/7 trading. It uses an extremely powerful matching engine that eliminates the risk of system overloads, as well as horizontal scaling which enables BTSE to do hot upgrades with zero downtime. BTSE’s insurance fund, strict security protocols, and self-hosted servers allow for the highest level of security for our traders.",
		"url": "https://www.btse.com/",
		"image": "https://assets.coingecko.com/markets/images/464/small/BTSE.jpg?1568012415",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 22,
		"trade_volume_24h_btc": 3284.226835490285,
		"trade_volume_24h_btc_normalized": 3284.226835490285
	},
	{
		"id": "poloniex",
		"name": "Poloniex",
		"year_established": 2014,
		"country": "Seychelles",
		"description": "",
		"url": "https://poloniex.com/",
		"image": "https://assets.coingecko.com/markets/images/37/small/poloniex.jpg?1519639007",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 23,
		"trade_volume_24h_btc": 3093.189224128814,
		"trade_volume_24h_btc_normalized": 3093.189224128814
	},
	{
		"id": "cex",
		"name": "CEX.IO",
		"year_established": 2013,
		"country": "United Kingdom",
		"description": "",
		"url": "https://cex.io/",
		"image": "https://assets.coingecko.com/markets/images/56/small/main-icon.png?1617267530",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 24,
		"trade_volume_24h_btc": 2232.6802490484165,
		"trade_volume_24h_btc_normalized": 2232.6802490484165
	},
	{
		"id": "bitso",
		"name": "Bitso",
		"year_established": 2014,
		"country": "Mexico",
		"description": "",
		"url": "https://bitso.com",
		"image": "https://assets.coingecko.com/markets/images/8/small/Bitso-icon-dark.png?1581909156",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 25,
		"trade_volume_24h_btc": 492.01102325027944,
		"trade_volume_24h_btc_normalized": 492.01102325027944
	},
	{
		"id": "b2bx",
		"name": "B2BX",
		"year_established": 2017,
		"country": "Estonia",
		"description": "",
		"url": "https://www.b2bx.exchange/",
		"image": "https://assets.coingecko.com/markets/images/226/small/b2bx.jpg?1534242273",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 26,
		"trade_volume_24h_btc": 319.56663072186296,
		"trade_volume_24h_btc_normalized": 319.56663072186296
	},
	{
		"id": "nice_hash",
		"name": "NiceHash",
		"year_established": null,
		"country": "Slovenia",
		"description": "",
		"url": "https://www.nicehash.com",
		"image": "https://assets.coingecko.com/markets/images/546/small/nicehash.png?1594379914",
		"has_trading_incentive": false,
		"trust_score": 9,
		"trust_score_rank": 27,
		"trade_volume_24h_btc": 46.990562474184834,
		"trade_volume_24h_btc_normalized": 46.990562474184834
	},
	{
		"id": "huobi",
		"name": "Huobi Global",
		"year_established": 2013,
		"country": "Seychelles",
		"description": "",
		"url": "https://www.huobi.com",
		"image": "https://assets.coingecko.com/markets/images/25/small/1481589873352_.pic_hd.jpg?1589962155",
		"has_trading_incentive": false,
		"trust_score": 8,
		"trust_score_rank": 28,
		"trade_volume_24h_btc": 183778.27209481865,
		"trade_volume_24h_btc_normalized": 183778.27209481865
	},
	{
		"id": "bithumb",
		"name": "Bithumb",
		"year_established": 2014,
		"country": "South Korea",
		"description": "",
		"url": "https://www.bithumb.com/",
		"image": "https://assets.coingecko.com/markets/images/6/small/bithumb_BI.png?1573104549",
		"has_trading_incentive": false,
		"trust_score": 8,
		"trust_score_rank": 29,
		"trade_volume_24h_btc": 37812.088643060226,
		"trade_volume_24h_btc_normalized": 37812.088643060226
	},
	{
		"id": "digifinex",
		"name": "Digifinex",
		"year_established": 2018,
		"country": "Seychelles",
		"description": "",
		"url": "https://www.digifinex.com/",
		"image": "https://assets.coingecko.com/markets/images/225/small/DF_logo.png?1594264355",
		"has_trading_incentive": false,
		"trust_score": 8,
		"trust_score_rank": 30,
		"trade_volume_24h_btc": 35987.43256461274,
		"trade_volume_24h_btc_normalized": 35987.43256461274
	}
]''';
const String CRYPTO_TRENDING = '''{
	"coins": [
		{
			"item": {
				"id": "verasity",
				"coin_id": 14025,
				"name": "Verasity",
				"symbol": "VRA",
				"market_cap_rank": 230,
				"thumb": "https://assets.coingecko.com/coins/images/14025/thumb/VRA.jpg?1613797653",
				"small": "https://assets.coingecko.com/coins/images/14025/small/VRA.jpg?1613797653",
				"large": "https://assets.coingecko.com/coins/images/14025/large/VRA.jpg?1613797653",
				"slug": "verasity",
				"price_btc": 8.777762525028741e-07,
				"score": 0
			}
		},
		{
			"item": {
				"id": "harmony",
				"coin_id": 4344,
				"name": "Harmony",
				"symbol": "ONE",
				"market_cap_rank": 72,
				"thumb": "https://assets.coingecko.com/coins/images/4344/thumb/Y88JAze.png?1565065793",
				"small": "https://assets.coingecko.com/coins/images/4344/small/Y88JAze.png?1565065793",
				"large": "https://assets.coingecko.com/coins/images/4344/large/Y88JAze.png?1565065793",
				"slug": "harmony",
				"price_btc": 4.068657162861906e-06,
				"score": 1
			}
		},
		{
			"item": {
				"id": "plant-vs-undead-token",
				"coin_id": 17461,
				"name": "Plant vs Undead Token",
				"symbol": "PVU",
				"market_cap_rank": 426,
				"thumb": "https://assets.coingecko.com/coins/images/17461/thumb/token-200x200.png?1627883446",
				"small": "https://assets.coingecko.com/coins/images/17461/small/token-200x200.png?1627883446",
				"large": "https://assets.coingecko.com/coins/images/17461/large/token-200x200.png?1627883446",
				"slug": "plant-vs-undead-token",
				"price_btc": 0.00024405459705529597,
				"score": 2
			}
		},
		{
			"item": {
				"id": "adapad",
				"coin_id": 18273,
				"name": "ADAPad",
				"symbol": "ADAPAD",
				"market_cap_rank": 659,
				"thumb": "https://assets.coingecko.com/coins/images/18273/thumb/EhSqPTtG_400x400.jpg?1631181091",
				"small": "https://assets.coingecko.com/coins/images/18273/small/EhSqPTtG_400x400.jpg?1631181091",
				"large": "https://assets.coingecko.com/coins/images/18273/large/EhSqPTtG_400x400.jpg?1631181091",
				"slug": "adapad",
				"price_btc": 1.1294592545855775e-05,
				"score": 3
			}
		},
		{
			"item": {
				"id": "solana",
				"coin_id": 4128,
				"name": "Solana",
				"symbol": "SOL",
				"market_cap_rank": 6,
				"thumb": "https://assets.coingecko.com/coins/images/4128/thumb/coinmarketcap-solana-200.png?1616489452",
				"small": "https://assets.coingecko.com/coins/images/4128/small/coinmarketcap-solana-200.png?1616489452",
				"large": "https://assets.coingecko.com/coins/images/4128/large/coinmarketcap-solana-200.png?1616489452",
				"slug": "solana",
				"price_btc": 0.004116553520700304,
				"score": 4
			}
		},
		{
			"item": {
				"id": "dydx",
				"coin_id": 17500,
				"name": "dYdX",
				"symbol": "DYDX",
				"market_cap_rank": 125,
				"thumb": "https://assets.coingecko.com/coins/images/17500/thumb/hjnIm9bV.jpg?1628009360",
				"small": "https://assets.coingecko.com/coins/images/17500/small/hjnIm9bV.jpg?1628009360",
				"large": "https://assets.coingecko.com/coins/images/17500/large/hjnIm9bV.jpg?1628009360",
				"slug": "dydx",
				"price_btc": 0.0002871699012480669,
				"score": 5
			}
		},
		{
			"item": {
				"id": "fantom",
				"coin_id": 4001,
				"name": "Fantom",
				"symbol": "FTM",
				"market_cap_rank": 47,
				"thumb": "https://assets.coingecko.com/coins/images/4001/thumb/Fantom.png?1558015016",
				"small": "https://assets.coingecko.com/coins/images/4001/small/Fantom.png?1558015016",
				"large": "https://assets.coingecko.com/coins/images/4001/large/Fantom.png?1558015016",
				"slug": "fantom",
				"price_btc": 3.599131731532606e-05,
				"score": 6
			}
		}
	],
	"exchanges": []
}''';
