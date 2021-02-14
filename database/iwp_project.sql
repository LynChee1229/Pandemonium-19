-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 08:44 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL,
  `itemID` int(10) NOT NULL,
  `shippingAddress` varchar(50) NOT NULL,
  `shippingFee` float(4,2) NOT NULL,
  `subTotal` float(5,2) NOT NULL,
  `totalPayment` float(5,2) NOT NULL,
  `userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `itemID`, `shippingAddress`, `shippingFee`, `subTotal`, `totalPayment`, `userID`) VALUES
(1, 1, 'bangkali road 2', 2.30, 0.00, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `contactEmail` varchar(50) NOT NULL,
  `contactNumber` int(20) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(10) NOT NULL,
  `rating` int(5) NOT NULL,
  `category` enum('Suggestion','SomethingWrong','Complement') NOT NULL,
  `comment` varchar(250) NOT NULL,
  `userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemID` int(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemMedia` blob NOT NULL,
  `itemPrice` float(5,2) NOT NULL,
  `itemDescription` varchar(200) NOT NULL,
  `itemColour` varchar(10) DEFAULT NULL,
  `itemSize` varchar(10) DEFAULT NULL,
  `quantitty` int(4) NOT NULL,
  `stockNumber` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemID`, `itemName`, `itemMedia`, `itemPrice`, `itemDescription`, `itemColour`, `itemSize`, `quantitty`, `stockNumber`) VALUES
(1, '', 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071313121513131316161517181d181818181818191a1818191d1b181a1e17181a1d2820181a251d1a1d21312125292b2e2e2e181f3338332d37282d2e2b010a0a0a0e0d0e1b10101b2d2620252d2d2d2d30352d2f322d2d2d2d2d2d2d2d2d2f2f2f322d2d2e2d2f2f2d2d2f2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800be010903012200021101031101ffc4001c0000020301010101000000000000000000040502030607010008ffc4003f10000102040305060404050402030100000102110003213104124105225161710613328191a1b1c1d1f0144252e107166272f11523338292a24353b224ffc4001a010002030101000000000000000000000002040001030506ffc4003011000202010302050303040301000000000102001103122131044113225161f032719181b1d105a1c1e12333f114ffda000c03010002110311003f00fa56d3907ff953f08344f94aa85a7c94239d2d022b5c8401ba54f04b909859b004353a7a003f9811e4627f8441ba527c8472298a5a6a16af224430c36367a40698b7ea60fc63013a6d53a78d898755e527e11e7f27e117f948e91885ed0c7cb4bf7a7d94dd440e8edf639058e43d5317e27ac1386b89b5c57f0f3087f3a8467719d8bc28a7e2143aa5e00db3dbdc58ca3bb4329095b871e284ff00ce0b3e2947c8c5861de015319cdeca4afcb8b47fd92a1f28a8f6457f967c857fddbe300ff35cb374287944c768641fccdd4182f24aa6847f2b6247e54abfb5693f38b656c89c9f14a5fa3fc2031b5249b4c1eb174bda1fa667a2a268432bcff04621245c11d4111e1222946d69c2d395ff0093fc62f1b6e76a50afee424fca2bc15f5836de93c533427c561d249e30ebfd63f548907fe847c0c31d89824e316528c2a28d99426a9203f57e0620c35de4d647689b018c9b2e5042174771414f386dfcc938104ca4adbf49293ef1ac57f0ea5fe52b07fb811ee2049dd87ca7754a77abb16d38078c1b2a21a3fb19bae32e36fdc45586ed9a15499266cbe7e21e6d5863b2f6fe1f2a8f7a90a24b396a79c538decdad23c41f810c5b8de16ff2e1f094a5cfeaa0af36a0eb1633239d9a51e9dd45d4d6ece58cae1882e5c31bf489ae4e6d2b19997d929e06e4b238195301ff00f2a81a7ec4da29b2b10dc0857c446eb605455859bb9af44b44a752881ccc23dadda14cc1325a0996901953960a431d10f7318bc5ecec40512bef42b89cd1462828a196a52b9124fc6332bbd98407bc1e7c81899a893246e0dd4f41751f8c09b576bb6265cb4169525a586fccd727ce25b391365952a5d330297d58dda08d8bd9b2a5ba8125fede2d31b31a1356755dcf69d076434e941838003f256ade4633bb676734d9812289091d0aab1bdd8b824cb9613668c8edc9ed2cccfcd396668e49ff008e57b02a863263544d330c4eced732bb4668ccc2c9dd1e5730be5a9c957db44b17f1a7d63c426c9e30ac6e693b278575159d2dd63538bc777682ad7c281ccebe509b65232a5281426e63ec7ceef2616f023753ccea60c6c273d94e5c95dbfc40de1977c216e2681a2ecd0263e04498c01808af2d2f0c769c94f78522c9a79eb02ae5521546b5b8fe53adae08504902906cb0c7ef48f30984528a9403e5f9c4ca48d228b0ba9be041a66884c07a10e3a1d210ed5d9e829514259aafa1827093c14142cb31749e0751d358f36863109414a0951347d03c31a811126c4d8c9a826130b2e648962648c62d401de9690505295288ca48a000806ec53ce2ec46cbc3a579448c6a9c38dc4871414052fe221350189663426ed9c9dc40cb8ca929065ac25054d3943238ab00a7d03add9f7adc2ad60a41978eef5398867dd0b2426e9cd948969049a1ee8b7862ae6713e2362214324bc3e2f3123215a2843241ccc295248228010f7a2e97b2a59bcc4a5c7e9528906ba06f78d04ec7a12829cd8c44d6003ce64e6caf5482f94953d81e849741317cadf758206511079db0a5693d20ff00522601ff00aa5503ceecf2c02a4b2d22a552ce60071501bc81cd4041b9a3e4e20a16149241497041621c68458d60a5453f81500e0abd622d393f9d54e71b4d9fb2178c29ca9c8a7199452532d40b0cc961944ca8190366770cc5f75d9cec1c996b4a96f39692eccc0599d209b36a4bf08a3e5170750e211d86ec32538742b1490b9e77959aa94d5d20685833dc12f70d1bfc2e0824000301c19a278294a3c870d7ce0a5968af18d54cb47730459092c4b70e716aa5c5a412def1252d2280827851fa9fbd6326cbbd9861208bc374fdcfc6049db1d259c5b818740f211eaa2a95b902182cbc19cff6d6c12820a12a2e6e9ae52d42a4bf874a7ef0aff133652b2a96a4558282ce5f3ab8ea69ce3a5cec3ea2f0a76860113410a4076d40e7f53eb16ab931f9b19b1e86538c7976ca37f51cc4587da135bfe5cdd4854593a713ff0022251fef425fd007f68ccf68362842192812ce62aef121a6b1194a73839b2325278deb52232cbd8b313e19ab0d6df537a3c3b8730cab6a3ef10cbd21c2d45cd1e275cd99b070f39054b91240d0a52a4bfc210ed044b92a57732b741f102feb7cbe71ccf1bb736961993f899b9058bb83f4e9027f3a62535ccea07c563ed03e23a93bcdbc05651363da9ed44d968eed2ceb497a0700d29ccc26da535531829b304a430b0200000e8200958c38a5099342513400aa3042ff00424b9010b7abf84eb96e6f32152d273248984e5adc28d4bf41193393cc61502f022a54904a97a0a0f9c5db1f099e63921203b151003804dcd059aba98a71432ee077b79c697656cc280919524b1f1874d526fceb4e6d104a73da5c8c3b02d3a439dd4ffb9a92ce18559c1a7ca2d9587012006206a2a0f38f513d254929fc337e501ccc496ae64d022f6a10d5b433c1ece5cd3950cece6b1357ac898c0e07332bb41578b331e10462f084cd2940ce997e250f0957073a0870f3f8a7d5305cef1a4c24899598a52944b39517f58fb10962cd511a1c803842401a9d4b56f0062e41290a097318e801616ade5fb1b06a12f3652331d447d8bc38b287b43602604253de2800352f144e493452cabcbe71c17cc0b96066eb6266b1185624a6dc217ce7711a69b2a3398a503315ab168e8f4b90b99795ce9a30ec34f921290befc149a944c648cc561d2920b1650b303bdc493f63f192066328e20ad9828cd21b54bb17203a833b54f1789eccecbe3272b770f30249ca54add02d56531207278d5e0bf866a1353decd0a9618a80052546b9802f44dab72f6178e8058833a89ce9550e6b57a9abea493f386582ec962e7d5324817ccadd1e4f53d43c763d9fd95c2482f2e427fb95beaf55561df70096d3d3da2121667ac9e272bd9bfc304b033a717d44b60013a3a81247908d2ecbfe1f6125a81eecad4eeeb255d4b1ddf68daad2943240727edcc7a1cc0f884ec04a20f7317cdc04bc853604114b8e9c0f0e7166c5c3e64a56a0c4f88681628af45023ca0a0800d6c05b89d3e714ec69eb2998152572b2cc5e5ce507302a2bcc9c8a3ba4a8b3b1e519b127ea96a008c72c479c7b5f5bc7d96913732e7a54086677f8479943d12013ab37a9898063e508ba1de4de413ccc4c47a018f4088054b9f40b3e503510479c56c121b8c58620ed28806673b43832a96a2120a921d23891520528e3dda39faf2a54900d149cc01bf3a7271eb1d471a28466a12e2d4abb3f08e59fc42404842dca56953a32d895b857b22ff5815738f386f59a681970153db712d9b859731252b4b8378e77da9ecf1924cc94ea95af11f5eb1aad95b67bc0caa1f8f48a7694ecdd384741e9844b1828607b3f04d2a5a48df501317c4380129f21f186b371401caa0169943287b857e6caa15005802e29685d84c68495294e4b163fd560fc87ca07da3342501292e4c28c088d020c61d9ac0ca9f3ccc226008ab12950274a809f846bb6c621386906604ffb933725852a8c6e592c47ac63f6366961284f889af5315768f6899f35dde5ca1953ccea60eaa640788f5f2a4674b526ac07f6861e4d1e6076a4f4a8a254c292410a3c06b0ae462e61504a4d4e86d1a3d91b254b2a00393750b3f28a3bce874fd3176f6824a590c8492df13a931a1cbce2d97d9298819a85ee05c0e038c33ff471c4ff00e262e7702e355004513a5e543797ad62582904a923477f48357853ba56952437221feb1f4a9d2d0490a274a88c7387f09b48dc8da79f5ab12d98881d4f6cc441b2d4161d2de74f8c4521685a494d017ab546ac758f2da191c07151ce46d1727674c9a09425cd5896671a1676beb1a7ec6763a5e1409d3095ce501a0ca8d4e5d793f2b083f072c04ba3f357d61d61df28259db4b47a8c5d2a604db7bef394fd43e43bed2d0c7f78fb2fa7131f05801d9f99d4c089cc4397a9b6838c5dca0212bab37f8fac7a94d789e31e84002a4d9abac45d9dafa0e112accb960e81fd62295398f0249a98b921abf622aa49f6401f9c599e9c348867f38828d6a42473358a240dcc2009e25c95bc4d08abc46590d4f58b13141d4f1bcbd27bcf01ab47a4c42c5cff0088a958a15e1f18cdb3aa7d46104278844573157bc532b1049603de2c5c826a2fed198ea3c45ff8c4b38e8f9a48af845484288a90f17a51602bc4c4cb072e0430ac42d98056cd455b4a4a8249001a1bb9ab52d78e2bfc41c6679d2e40a9960b84d77d46a1b880907a1eb1dc31fb4140284b466506b9ca0bf02d0811b1f2553965a8b9250914cc5c87097579fb453921f5d1335403415bab9f9ed338f892680df81d29ade1fe114b5c996b98c14acc40abe504a428f0763e9ce3abe23b19879809992d330b1a94049a924d5090412a512617627b08841025852400c94e6714b075e6500df62341d4e9dc8301b0ead819cd264b82364a2489a954f4a9481700b11cc716877b53b373a5a88033a5db30606a1ea1e87e9a42a998629a10d0c065c82d4c5d9593911d6d1d9f25273e1ca949530ce48dd49f1326f9b485bda3448609936000b1049e241ad606c1ed154a99992d4d0d8fd0f38d0e2f128c4273252065bbddf4689a63fd3263c9b0d9a65766e0c24babc47d846a3666d6972d87765f8e66a42dc348a2f36e94d6a3c449a0e5c7d228a92c4578da02e77fa5e98282a66f70bb701019db82abef0d7fd44703eb1cda5cd526d0dbf18be31733cdd290769abc7ca2252dc5924f9e9ef19390898a07c0aeb434e91a3c6ed81310528dea8a86208bd18bfb42b44c4e8c0eb0bf53d49d5b09c7e9ba32894d074a94e3fdb58ffd92791e5ce18a7682ca427ba4a91aa095272f34dfda0338a637f4262189db1bbe204d866b6625839d039855f37883495e66e3005f35c73d9fda69505049f028a0a5df2907dfac6a64cea011cdb646c09f87515aa6393748f09249a92ce68074248ebb2d9d8b703eda3a18ce91a1a72328b3a963c41716b1b1e512529f9357ef48a652c9ac5b2e5d9fefeb16568c006e482f37dd3c9e08949615d758822ac59daa053e7ab45c96b9f28ccdcd00954d919aa0a835999bdc4513b387094b9f6f33ac173268d4fd7d22299c8cd95f7b855ecf0ae6c8b55aa89dbde6c8a79ab95cbc21fceb27880587b5e2c448968b015f38017df051213991d40824a3333823cfe6239be2df09bf6bb8d1423beded09389dda33f2d0402ac72b33344d4909a00ef4bd8c569c331cce3a5633c8f9f21001e39a848a83732c54c2b0c01ad1c456b9192a492da0fac4d2a20b8a0e7af90886d002da9e7d0d0f481f0b50d4c2c8fc421cd0e21380c40583bac39182a62c27801d5a3373b188921eb7d3da069bb5d131ee40b8702bce91b2e66c694dbb7cf6e259e98b1b1c4d50c7a2aca04f070f195dabb6a609c5094a0b7ea3e61f879c518cc51080a97bcb57e97200b3fc07aeb09b07839ab585281209a8019936a51bd1e0fc67cca00f5f9facd7174c896cd357231aa297cc0b2989a9049d0713e7c7941071d9539956172cce416a0b9e2f09712b1294944b042515008a926849d2df3807bc5297956a529dc97cd7d583b8d1a34f1322ec8d646dced0474c8db91efef1c6136bad4a5295b89e0735ab51400e9076ce98acee561692e6c7afc5afc63398a98549ca95134a255a307a0d28d7f941fb3865342a1419d2fba48a1f4e463255c8bb9367e7e90df1291b0a8db1db2d0a3de39059a95e551adf5b4627b49b0f2d1233694d0380480035cda947d418e81819d40e6c3f70628db583ef134e29f4700b56947f2261b4c95e75e44448df43f1387cdc19061b6cfc2960d46d7998331783482b150cb212d4b16208a86772fc08f357b636ecac2009073cc507cb6cbcd7c3a475d722ba865992e16c46db8ec7e778cf198619082b00f126f012767ad85411d5e30f8dda13272b3ad4ff0001c80d22382da7324a8290a21b4363c888133a98bfab11e56163d7bcdea308bb1867f85570101f6776f4bc5eed11300aa7e69e31a6ee4f08aa8f1ea4380562ac76030eb00a3715605069e7f5818ec6524e71887e24877f78518c1dda73043d58005af14a71c0075e74ff00da176f759c7c7d5385d21ff30bdaa7bb2d9f3793375e308b198b2552c3b6f249e4c69064ddb1877aa96af785fb3a5a7138acaa072aac0696f50057ca002ef75265cb6b573ae489ae195eb153196ae46ff581652d833311f7482b3850637fb68d09d4273c0a31dec8c4dc1ad290e4283463766ce639751f0ebf768d460268533f16f3881c56f28ad196e2e7096012145cb325898a732962a0a1239d4bd19f8f48748943503cda3c9929269685b32e67ba6dbd3fdcdd0a2f6de2e18524a4814a38714f5bc5f3a480a72a67a5a2f984333fa4073e624717bbc00e9081b0f7f8259cbea67b8c52b2ff00b6905434570e2d0bd38f21052a0c7968fc203db3b51401094abae5201239d9b57e51979fb714c520b925f30e14b71a8358573e3d0f649e3b7f11de9f1f88bc4d9858525f7811abd7eff68f676d44a29983b3d8fc348c04fdb53080016038131090662cbb13c687ce334f1176c3df9ffcff003cc64f4abce43b4da7fae9ab2526faf0e04c29da3da098e084a482357f910603978252ae8673e1700f928d0fdd7894bd856ccb525ec007676a953b0eb1a6870b4c761f6fe07ef205c41aebe7e62a2b9b39595f9fac34c0ecfcb76aa99cea34616634f9f23f6660112896214e90e59f8b815e510db2e9652012c5980258b30229d2b158f1d798f1fe268d9757957897fe3a5a4896c4934d328e05a808b5cc4e64f645581b0d18e970c3d200c3e04ba1d94aa12dc7501ad9430e758ba7490a4851268ab503e9f1786f1b37d238ed302ab772127085612a2b565ab03c5cdfcfac5d264050cc2f54bb92de5e9688a16a2a48ae57d29463fb45f830103ba0e054b9fcca70edc6e697a457fd3dbe6d213724894431a5079fddfd044b0b24200ca1812fc6a797d227dd972821f330a7e5a3124f4822504951414b0a86e4053a0300f9af723ed049a96c89d5d2d53e6c7d2184e53209340c5f481654a4a72802b71c29cfe7abc5cb4b8567650e0da6b78980124fcf789e622c54c06d1c2244c4d5c14ab99ad49702a0a99ed1cc3f887875fe28a949a14a7216b8003d78bbfb728ebdb465252d903242b2a4568c4b926f77e6e4718578e952a6a724d96e2e1ec0f2873a336951cf08e6c4547adce6783c0225ca19c3a8d6ba42b9f942814d18eb50f1d1f6c76713311fec919c0b56bd4e863976d490b96b29582140d8c384ce4bf4d9311f3cbf178c24852771692f9931aafe6ac5ff00f69f41f48c34b99c63499604ef2c3b0e0c2d58f98036724731007733672b97157cb8c34c24e4a54926a01a868d9ca9695842d294e56dd2cc0718b2a6b697d39c7aff00e5ba995da9b2d385c3d58cc99473a0d5869c213ec399dde2252ffa80f5a7ce0ded2ed133a793f953ba96a0617f5308e64e214143f2904795632226b95c39f28a1da7604a8115f2e20c7a95d5b9427d91b4d33258582e0d5b871868e0b12f4bf48c966063194a7ea2c7a728d1ec4a92e1b5f946370d8d4779dd6749999736570f978b758d56c8c4e8f13627790f11fccc491e1755e81afd4fa45692a7fb68b25563e54d003c6eaa00da0132131075ac0d3e2def9c5203c4280054a3401c8b7bc68a76b82459a132ddac0b98592add4804a4d07571a9b00758c8ad0c7de1ee3312a98f3144800ee2134009a02dc5deb7a427972ca955234a9e248f5bdbe91c8c83c46d43bcf43807849a4f685607039aa5e81fef8f0875849196dab7cdfedb5314e0259cb66e6756a9f3eb06a17bdcc69e63f68e8a6208bb7314672edbc3f0f2d3e25330a3102a45d9cde3c5e3a5953366005299af6e2cdf7cd2af1eacc4a54dc43137bb39a07e43e114ecfc44c3388caa0404a8ab2b24853f84eacd5ebae9cccd8d99f617befde32a00164fda3f9f8b4996145dc8614ad7c239fede51e4b504ca012415122b7a9e25d857fc40f21d6120a5827c2aaf00d735af945a252526ace2af47357f88f782605575319428ec233c3cace016a02e49a68d4e76f481677e92a0e7a38aebf0f5894d9cc0b00ca163c78374a758164e012165750e2c2c3dba1e516d6be61057de14304c414934bbeb680bb43b593212c90eb05d9e8e43a429ae756e4fd4fc66d44a5265249334b6f01e17a961a9f83c6655b1ccda92c94926e1dcdc9d492d181ceb6759e471ef2c2b1dcf128c0ed39f3140294a528b300c05ecc2f1af5618e6ef32ef3072554e2e3954c2ac1ecf972e604a0a9c8d58695a16a1e70f253b11945d99df47a7330aa30d458fc3f0c3cac36d32c9295b865020162f7259c5873f6832729410cf5662a1c752055be50449406a59a17ed79842140298bd1c805b8747f678e9e2518f196f59cb76f11c099bdb4482500d54e6f50cc9a06b1ddaff00513c8c152800ecfd602c64e52a71985ca40c880cce0d54a21e8e4b333ee0b410898a36de49fd543ebac35d2252dceae04216e5d21418b53988cef6b7b3a8c521d809a9f0ab8f2543ac39214c7ca3d98b65106c61b859103020ce078fc22a52d4958650a178759e375dabecea312939584c02878f2319afe5d9ff00fd6a8022723374ed8dab910346225336747ac169da6b4a0a65cd2c68c14e2b7a42f4c841fca3d0440cb01c2400fc044317121314348a542182b65cc17ca83c17325a15e6952828798882b664cb8415f1eeca667a99654de70134b91d9bb4d5216e2a93421fdfac748c0e2c290957103dfefda39d4bc192584b538b872e7a50d7943bd898d5cb024ad9249dc0a23304f345c36998077e519b7a89089b0c39aacf30915fd2e491c6a5bfea61ce0a79047d86d58c67244f01200e5f7ccea79c192312c401a9f7a0f285ddbbc2552769bfc2e31921f5e15e55e17b4144037ac63f198cdc4806a03f187db2f18262456a2fcfefe50c60c97b1983ad43d6a8ce769672fc028087571bb308d1aa809e54eb0b7bbce33280701c81cf81e82d1875f9f6f0d393cfda33d1a53788dda6271928e4601806abbdf896a694eb11c2c80c29ad7852cfebf08d0ed3c1957853ba0034b79bdd55d3e7109785ca86400e753cd9e875fb78531751e7dc6c07e7ed3aa68a7b93f2e08010c9677766146a9ac5534904e540208725f2d0f3bb55fccf08226e02c84aaf750a8346615f282a46093241cf35e85c9a0b79dbe9c21dff00ebb3bedf38981c600da27c14a50240439d1c171435cba5df93c32c4ca94850ce4ef20926a1b2a8148bff0059a728127e3e5254149751bf10fd7a16d6c206c4e69802d45c21415952f940620bb5cb151241d38d80b8aa4de69a093a9b68c8e3010c97c8ec09353c80eb4ada9788a2725f31a288dd7a9511f2f68f7f0ec15991414e1d1ab5a70e710912d09752522a4804a94e18d8820976249f8f0c97117d9e13385fa638c26012a3999802f4f09d01fdda2f5ae5a57901df20b316228000daf184b3e6cc29eed330a5249cb567357048b7102decf76cfc3933015a72a85333d4801efae956d0d6d19e40cbb181562ee17352a2ca056736e953076a33d3c35a0f5bd0dc3e18021394bdd5404b91c3d7d0c781d6829033ad22ae401999ed4e5e90c763059044d4b2de9c32e8c616c78c3b71cfcaf9ef33c9934ac8e1302924294919ade5f4fa98f65ab7ca18162e000d4141586465ef171d2291259599aa75e5a79c303a563407aeff0068a1cdc932a5e2005140492c1ce83880f192da1885ac0ce5292c4b0578535672ed40ee68f9b93468f6be2c250495252862f314a0909d0393a9f9472ced4f685134193209c947510c16c5f7410e0390779ad6ab433a0bb695e0498d828d4799a10a41424a4e64b0de1706ef5d0989a2716bd8b1fac21ece62734a28578d143cd26a97e3a8f286ba96d34e47e31d1514284ec6221f182214a20dfca28c43354f9c792a6353480b6a6232a4bf41050826f02c4e294092f057e395f66112f1c546c18690cfbf1c228986eb30d3f65cc9694ad4d9545811a989e1644df1250b2455d214e299c1716dd653f02f077693149993d592589694eeb26d985cf0bc1bb3c932c242f1b50827bb9608dd040c8aa96660141ac0105c0802769e61623fc0cd2cd297bc5406e9ba490a16b82083c083c2079f8652090b052a0486218820b1e8c7e11a0c2a0292b026e2d4952838487cc89b524a41b9982759df2f585db60a0907bc9cb98c02ccd484b008484000578d4dc31e24d438ba7626610dde2db815a9bd1da03286636e05c51b90a88bd41e22253967a6ac09a716bc4a9269f626d43312ca3bc92c4e8781e50fb03309507d1cf9e9f1f68e7383c62a52894eb43ab87f6fde363b0b6926658d05c3871c88be9ed784f3632371c4631b8af79a89939e5877d2de57682fb3fb44837a8a7ada323b57b49264cbca0852dfc2920960756a0f384fd9aed428e24898c94cc609fe922c1f577bf2104b8c958bd9d46773c26d013120b820e9f5a520b4a1ea0f9738e7b87da1dd4d0afc8a16f8fbb1f38de6ce9e1684a81771f7f08e7a93acabf31d6501432f060b8d94c5b29209dd624b13473c2044cb50e01438b283ea6e2a22cdb3b59724b65394eb4f685676fa54c44a39886ccc1e8d622ed48c1caeaf2dd8f68ce3472b75ccb66912c9ce48a034a3915a7997f9c2ec56d825864486d55bd5d4b35fcce9c2218acebabb52854493766a51c758a3f08412eaa8d741d787bc163c596b6143fbfe6303c31f51b33d46094d9804b38a50805ec46bd39c0ea5cc5eeb920d40b02003c74a1e578264e0336f05a4104366200ad81865b3b0ea4153290b500010198bbb00694b3c32a8aaa06e01e77e60b64dc9e4fda27c1499882524a814b5dcba4f849e3a83cc1f3727045647761292c295a8cc0bd886a751e422f4a084e6594050272821829c5524e8f4341702946256cfc42145a5e651018837411f94b6a1ff00cc064618c02879fcc02e5b91fc40c6cc25395441e2e5402aa2808d4070e45b487781d9ed2c209a10c0bd9c6874e504c8400415a6a6d407fc413824ad9d6908abe57ccdc1f81e91a620d95acfcfbfcfb44f2e6a15f3f4836cbd9fdd2027c4a775155c986494d6848e51eb401b5b6cc9c32734d581a84dd4afed4dcfc21f4e9d10000445b2b39b8d0a9e30fda7edf4a94552b0e04d980e52a3ff001a4f51e3238061ce33bda7ed84dc4bca94f2e49a1ab2e669bc47847f48e357b465a5c9cb6f7fbe11a9a86988f2d3edadb4e7e2559e74c2b22da04bdf2a4513e5e70182d523cff6e5051905edcfc8ebea47c22954bff3f0a458da11587ec69bddcd49b03ba75a1b7bb469e4d595a1a1fa88c8024dd86a1830f21a07e11aa4e392a941643326ba0044693a3fd3df629facf369e252915a4209f3173c38f08b0817139a7ab328b25fcbca1a4a012001601a24ec04d3c73140480e14e0c33a713174d9495862cfa71f582bfd3799f48a225b28ef39dba9cc36c36d140400a998ca000842d1945051209dd0eed7a352f0be5bb1de88131089e3818662f1e9749c3af10964849ceb0fbaf942721f08734e24d03c06b9aa528a944a95a9512496a0726a4b01e915900c484c64919524920e6ab867a0ab317ad34112a5dc8ad062a2af289ad4f10503622254972a982069b2c6a20b5f38a170352e0ea4c56a1042c454a11524e8fd9cda49c4ca09528099471c0870edc0b5a36fd9fc7cc940256374967a10fd74f38e27d9ac5f758841d0ee9f3b7bc766d953c1041b425d4e0d5ba9a318c59b48d2db893ed1297366035ca2da80f7f38f44a00a5018036e2586a6fc635b8692852003510aa7e1e5296c125d0e0dac2f4d01ccdd442f8f1b613ab21fabe57cf48ea750aeba5471156797be4d8d7286debdab5e7cdab151c782aca038714ca417d417a07e1d4d61be130490545d24a854dcdcb01c0351b979c5f87c2280606a5c12401c79575bbebe647aa374a76fb7fb974bde2ac52540857759892e0383c80602eedc784558194b5aca8a72243f8c5cd3a3000500b43f5619283bc5d435d49e612358a719859214974aa6126890743a1e50b162d65ebe7e9fb420e00a02132f06a520148706be2207965e8045e8d995ce92133180b385368b1a8e06e38b120b1924650006f94588206bfbc6cb896c5445f318361e7e564ccdc5daad949fe85d95d28ae423cc5e3820b6ba934091cce919fed776a24c9050a566537fc2962a2ffac9a213ea4e80c73bc5edb9b3a8b4a44a25c4a19c21396c43281371ab6a0087915c8d2050fee7f8fd778b8009be66bfb4bfc4000997850145bfe557847f627f311c4d296318799356b5779316a5ad41c9517258a853461a45b311241f0ac024bef82c0d2d95c8f388cd4a0064e67b1701b5170a3c386b0c1de6b8d42995cf05ceeaa8028eead994ec5dac72aabc41f2fb5a821dc588de4a86615d46a342d06c949cb9bffe8a298e45a42406151ba48252bd40bf5887e10d3731046f15174975ab297662002a2a2e439ce2a6b03217de0b95c923a344260a7db70f2b0f5821d24eee6652685452740d972a4355c6b46b3449292a06d40f5a3f21cf58bb12541585c5791af30dc63e9f31410cf404123dbe2d12969bc1125201de0e05c10e3a46ab35e973783995fb03bfdbbc5f8498564dd93ae9e50405a81e30e06ca12d240ae6abf2366f281d186683153d82e4c6c6d7895cb987510cbbc813bb0cd06f7710c1c854ce6e072223d527847a13115c0cf0320c63c03945a9547a4449707298f0a62f29ab47c05444852cd95225a965330901a8c758376c6cb92894e9a2a8ceaa9e34859340ad183da0ac360e56e2a62c1055954814207ea2785a326537770c30aaa899422a508d376bb62a70f31191fbb9880a4d5d8eb5d78f9c215a13945f33d7801f3317762e5418a7511d3bb21b4b3c941529d4032bca849f48e6e0437eca6d1eea6e53e15dbfbadee23371b4b13bcec2c5b800c37c5480c48037832a9716bc63761e2ac4171f18dce1941481c0c62cbe2632839941b435c5d8e93281ca32859b7f96e1ce2a96821b290776c2e3a6bca1aaf0a96a8722cf78aa560b2b9043bddb4e0639edd3e50f7a7f1f378daf50ba6ae058c96e13987df3317e1e4254ae9f6d4b74839400d74668c7edfed949c3152248ef26135008ca936de571e42bc5a354e89d9f51d877fd266dd4f974af334d8dc5a2482b98b4a5005d5463d639df68fb7f3263a308e84d8cc2379435ca0f87a9ad743193dabb5676256153d59b80b252ff00a469d6e6958ad12e9e85f5a5e3a898531fd222c016dda43bb72e4924bb925c937a9357bc1094eef41a73d7cf28f58a9363f7f7d39c4f0ead3937deba41913406153524a41e22be514a97ee3ee9d43c7b2ea83c8bfdfa98812f97a34081342dde19230608acb98494d188cb522b4490d50eff00aeb5631f1c254154b994412ade624920e666dd00859621dcef44b0780550994b228414e50e97492ce095390ab56a294ccaf0e13290e85a6e2e0543b36e69ba2bc0d2060484ba12c0e57a3d48e0e4002fc8458897bca49047c9e3c44b1988a807897e16d6e23c4a4853f3f8c49a4acc962ece3d9cd22c942ce3cfafef1762a51a11e761a5c7deb1ee1cbd1a8458fd7d60c4031de0b7e5e5374967e5a7df28ab1b866b479b0ce55849701472d78e9f4f386b8a92416220c19d6e8fa9a005f133e8926b07f7078413f87e117f72794598fb753739194e8f1e658238d0457e5ac49e484a72d7a4484bd227922596242025211c62e461c6552b3541000e3c4f97ce3d023488ec6ce3291342e5b2d01603a9d941ebbb7ac5197328a4c54a4c1ab881408921913decd12e485294078526c926edc03011463f66cc92a02624806c458f1631665e7174e9ca9ae662d4722593af000721c4c0990452531412c41e15836625fadbe503cc96c48f580853a1f61f6d670127c56e4ff4b475dd898874373f8d63f36766f105188431202a85ba3fca3bd767a712907ca1363e1e4da5b8b5b9ab857b736fc9c32334c537048aa946dba9b9f87168cbf6d3b6ca90b548948ff71812b5332730394a47e634d5bce39bae62e6cccf31656b500ea51a9a13e4296b43c04c02969a2db9dacc4624e549eee51fc893bc413f9d77f20c2ad5a18cfc994c18f13f082264bca4917009f8eb1044e52495024652e082c46946e5106f18a0928cb5a7d82044c9bbd0feff004888a014d1afad2a695a0b522b05dfa469533b96137fbf5f48f13422febc6208f97ef16a1880479bdafa6ad5d5e2ea086de1384539297b8eb68f4c9627887e3a7d983a460529477ca720ba42416215c496346a33798882672a5921c10a195981dd25e94dda8d3e70350eef69449c20720a4137d09afc4d44112f0e054003a06e9a47c84b28114d0fbc132500b74bfd628884adb492a7a8a132d45d297291c1eed1e2e43ef06de16d410d5e86deb16896ce35023e949b8d456915425dca4a5e582dfd2fa129e0797ce289280d5a13ecf51eff00182929771a3b81a57e741e910206524bb3e9707918bd34256ade5d24b14b9bd88b3bd3e11b6c663d0bc3ba24e79852e012c336bbdd6320134a5c8bb0ad1ea34d6dc6361d8dcb3652d047848524ea333b8f51ef177b6f3362c3e93533f809fde0a8cab1e341ba4fcc73865dc41bb5f618ccef9563c2b4dc0e0788e4606fc2cefd69ff00c7f782147bc31fd45945641bfb4fffd9, 2.50, 'a bangkali roti', 'brown', 'medium', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `storyID` int(10) NOT NULL,
  `storyAuthor` varchar(50) NOT NULL,
  `storyDate` date NOT NULL,
  `storyBoard` varchar(2000) NOT NULL,
  `storyView` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userContact` varchar(11) NOT NULL,
  `userPassword` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `residentialAddress` varchar(200) NOT NULL,
  `userType` enum('User','Admin') NOT NULL DEFAULT 'User',
  `profilePicture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userEmail`, `userContact`, `userPassword`, `gender`, `dateOfBirth`, `residentialAddress`, `userType`, `profilePicture`) VALUES
(1, 'koee', 'hokoee88@gmail.com', '0125330788', '123', 'male', '2021-02-02', 'bangkali roti road 10', 'Admin', NULL),
(7, 'bangkali', '111@gmail.com', '0125330788', '123', 'male', '2021-02-02', '', 'User', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`storyID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `storyID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`) ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
