/*
 * signal_of_interest.h
 *
 *  Created on: Mar 11, 2012
 *      Author: staticd
 */

#include <tmwtypes.h>

#ifndef SIGNAL_OF_INTEREST_H_
#define SIGNAL_OF_INTEREST_H_

#define n 2000

const real32_T y[2000] = {
		0.335263,
		0.247683,
		0.251062,
		0.323203,
		0.381377,
		0.311106,
		0.341526,
		0.243220,
		0.263922,
		0.314062,
		0.241771,
		0.335405,
		0.238668,
		0.038324,
		-0.077444,
		0.019074,
		-0.076884,
		-0.154045,
		0.012531,
		0.196354,
		0.013771,
		-0.110123,
		0.132701,
		-0.035393,
		-0.143360,
		-0.081173,
		0.045039,
		-0.071117,
		-0.117013,
		0.055931,
		0.089103,
		0.053025,
		0.131657,
		0.126297,
		0.134228,
		0.089414,
		0.061335,
		0.031708,
		0.177401,
		0.012496,
		0.081878,
		0.203932,
		0.049582,
		-0.005320,
		0.048447,
		0.049483,
		-0.072904,
		-0.113825,
		0.085630,
		0.063072,
		-0.126845,
		-0.073800,
		-0.146609,
		-0.396239,
		-0.394200,
		-0.235272,
		-0.246197,
		-0.296477,
		-0.252423,
		-0.125477,
		-0.186525,
		-0.238112,
		-0.264633,
		-0.274958,
		-0.369974,
		-0.342065,
		-0.361350,
		-0.422250,
		-0.385253,
		-0.519593,
		-0.494595,
		-0.338310,
		-0.548258,
		-0.452176,
		-0.291504,
		-0.187580,
		-0.301703,
		-0.046017,
		-0.018477,
		-0.003605,
		-0.080315,
		0.102791,
		0.093275,
		0.130218,
		0.201731,
		0.227703,
		0.297079,
		0.364029,
		0.399682,
		0.374579,
		0.531338,
		0.410156,
		0.436220,
		0.541618,
		0.465055,
		0.502704,
		0.304206,
		0.451379,
		0.353892,
		0.281701,
		0.253953,
		0.384219,
		0.098578,
		0.139370,
		0.227645,
		0.002277,
		0.058132,
		-0.130316,
		-0.066906,
		-0.099341,
		-0.213431,
		-0.267959,
		-0.149711,
		-0.332728,
		-0.342865,
		-0.312248,
		-0.301810,
		-0.282353,
		-0.371625,
		-0.393410,
		-0.244193,
		-0.511023,
		-0.401148,
		-0.342502,
		-0.190640,
		-0.295910,
		-0.231919,
		-0.162511,
		-0.084008,
		-0.190175,
		-0.058817,
		0.153589,
		0.062431,
		0.192802,
		0.222130,
		0.225300,
		0.240327,
		0.065509,
		0.218689,
		0.266088,
		0.285872,
		0.574850,
		0.605197,
		0.602122,
		0.564053,
		0.464634,
		0.558432,
		0.695799,
		0.590471,
		0.597130,
		0.442096,
		0.280540,
		0.144179,
		-0.009078,
		0.101953,
		0.023812,
		-0.111374,
		0.127615,
		0.091669,
		0.014856,
		0.259997,
		0.107887,
		0.246785,
		0.297748,
		0.097186,
		0.159065,
		0.180246,
		-0.003210,
		0.087665,
		0.050987,
		0.234727,
		0.219153,
		0.096479,
		0.218401,
		0.351109,
		-0.053221,
		0.132068,
		0.067562,
		-0.151145,
		-0.176206,
		-0.158971,
		-0.238070,
		-0.314218,
		-0.393623,
		-0.518980,
		-0.338273,
		-0.577828,
		-0.527816,
		-0.423554,
		-0.436863,
		-0.436015,
		-0.450831,
		-0.459779,
		-0.343168,
		-0.403857,
		-0.414659,
		-0.113196,
		-0.018879,
		-0.079490,
		-0.005190,
		0.199065,
		0.109052,
		0.208028,
		0.355829,
		0.277484,
		0.323639,
		0.340045,
		0.233011,
		0.318341,
		0.122002,
		0.060304,
		0.207807,
		0.131950,
		-0.059156,
		0.058452,
		-0.039321,
		0.006971,
		0.000545,
		-0.209132,
		0.054902,
		0.072845,
		-0.244222,
		-0.099079,
		0.158609,
		-0.263784,
		-0.010488,
		-0.062828,
		-0.000604,
		-0.063432,
		-0.045081,
		-0.058353,
		0.022835,
		-0.268963,
		0.039368,
		-0.092852,
		-0.273101,
		-0.181065,
		-0.244061,
		-0.300240,
		-0.243880,
		-0.361080,
		-0.127326,
		-0.053624,
		-0.230407,
		-0.127999,
		-0.108307,
		-0.271656,
		-0.257775,
		-0.397306,
		-0.166010,
		-0.092279,
		-0.141902,
		-0.015854,
		0.200566,
		0.000325,
		-0.078917,
		0.134522,
		0.031625,
		-0.055125,
		-0.041965,
		0.041591,
		-0.214583,
		-0.159990,
		-0.191797,
		-0.236703,
		-0.208258,
		-0.296743,
		-0.112574,
		-0.060584,
		-0.102927,
		-0.089657,
		-0.030118,
		-0.110675,
		-0.119748,
		-0.181208,
		-0.209794,
		0.049012,
		-0.002516,
		0.172514,
		0.233072,
		0.226702,
		0.132695,
		0.375075,
		0.385505,
		0.458502,
		0.565733,
		0.555014,
		0.582254,
		0.626522,
		0.530309,
		0.441474,
		0.447876,
		0.388535,
		0.234509,
		0.236855,
		0.135622,
		0.278719,
		0.178635,
		0.118878,
		0.108566,
		0.227091,
		-0.197405,
		0.002441,
		0.115459,
		-0.130328,
		-0.065477,
		-0.128027,
		-0.247772,
		-0.231744,
		-0.379655,
		-0.379667,
		-0.265159,
		-0.515299,
		-0.387512,
		-0.378809,
		-0.483504,
		-0.340552,
		-0.322840,
		-0.271352,
		-0.006212,
		-0.225705,
		-0.110979,
		-0.055568,
		0.024713,
		0.048951,
		0.045551,
		0.084874,
		0.236319,
		0.097608,
		0.246676,
		0.465043,
		0.376074,
		0.363345,
		0.542545,
		0.484781,
		0.530148,
		0.530698,
		0.475965,
		0.568219,
		0.543275,
		0.427766,
		0.417404,
		0.379106,
		0.319836,
		0.254145,
		0.169985,
		0.204205,
		0.175233,
		0.222798,
		0.149085,
		0.224551,
		0.069050,
		-0.100374,
		-0.091662,
		-0.127632,
		-0.242198,
		-0.358016,
		-0.318036,
		-0.344041,
		-0.313218,
		-0.327149,
		-0.263028,
		-0.254641,
		-0.225222,
		-0.297560,
		-0.256903,
		-0.244179,
		-0.302914,
		-0.367265,
		-0.262614,
		-0.203294,
		-0.270333,
		-0.139418,
		-0.109310,
		-0.091647,
		-0.029052,
		-0.098370,
		0.086217,
		0.115236,
		-0.079392,
		0.091694,
		0.020886,
		-0.107611,
		-0.180026,
		-0.076734,
		-0.013501,
		0.190112,
		0.069893,
		0.080030,
		0.187539,
		0.183977,
		0.095250,
		0.183594,
		0.177528,
		0.125248,
		0.146633,
		0.083037,
		0.138046,
		0.090309,
		-0.019412,
		-0.016271,
		0.009370,
		-0.011680,
		-0.081545,
		-0.085706,
		-0.106040,
		-0.280199,
		-0.261978,
		-0.277588,
		-0.217922,
		-0.178287,
		-0.308609,
		-0.383884,
		-0.379033,
		-0.422146,
		-0.326931,
		-0.326092,
		-0.145548,
		-0.189992,
		-0.216012,
		-0.033101,
		-0.008126,
		0.074822,
		0.117437,
		0.287467,
		0.217692,
		0.190270,
		0.144182,
		0.145904,
		0.102530,
		0.063438,
		-0.014814,
		0.121247,
		0.052947,
		0.055895,
		0.067430,
		0.082532,
		0.068056,
		0.061353,
		0.023316,
		0.063425,
		-0.005992,
		-0.122588,
		-0.103304,
		0.049036,
		0.068182,
		0.236185,
		0.304565,
		0.337616,
		0.229381,
		0.096014,
		0.042571,
		-0.112648,
		-0.144805,
		-0.140975,
		-0.160674,
		-0.174186,
		-0.143859,
		-0.257137,
		-0.176413,
		-0.137876,
		-0.208797,
		-0.214756,
		-0.146132,
		-0.193342,
		-0.272397,
		-0.212092,
		-0.085910,
		-0.192030,
		-0.170615,
		-0.130434,
		-0.048533,
		0.010093,
		-0.038204,
		0.090684,
		0.147106,
		0.000918,
		0.056975,
		0.163989,
		0.159338,
		0.146609,
		0.280563,
		0.294403,
		0.405789,
		0.338788,
		0.375420,
		0.413400,
		0.389752,
		0.334699,
		0.447967,
		0.344537,
		0.346667,
		0.273798,
		0.074189,
		0.072294,
		0.031860,
		-0.082897,
		-0.053916,
		-0.060927,
		-0.056245,
		-0.162772,
		-0.220493,
		-0.308171,
		-0.316015,
		-0.449500,
		-0.429803,
		-0.455335,
		-0.452768,
		-0.355229,
		-0.332729,
		-0.364755,
		-0.314135,
		-0.307857,
		-0.379162,
		-0.241043,
		-0.218913,
		-0.100703,
		-0.097967,
		0.072116,
		0.111466,
		0.146041,
		0.210999,
		0.247414,
		0.248355,
		0.363705,
		0.376348,
		0.458227,
		0.462087,
		0.538101,
		0.562817,
		0.574910,
		0.661177,
		0.661377,
		0.601825,
		0.677405,
		0.650464,
		0.557582,
		0.486429,
		0.427927,
		0.501897,
		0.457730,
		0.448600,
		0.407771,
		0.281838,
		0.148297,
		0.066560,
		0.015120,
		0.024611,
		-0.097829,
		-0.206211,
		-0.314006,
		-0.391323,
		-0.601386,
		-0.634921,
		-0.632629,
		-0.743178,
		-0.752788,
		-0.728907,
		-0.638521,
		-0.642027,
		-0.582713,
		-0.541175,
		-0.410613,
		-0.372593,
		-0.264567,
		-0.256098,
		-0.284166,
		-0.229743,
		-0.169041,
		-0.070689,
		-0.056398,
		-0.040172,
		0.016506,
		0.007706,
		-0.055980,
		-0.145445,
		-0.120190,
		-0.113793,
		-0.024935,
		-0.058489,
		-0.074884,
		-0.011684,
		-0.039748,
		-0.065729,
		-0.041462,
		-0.007421,
		-0.050633,
		0.056162,
		0.038367,
		0.094865,
		0.064737,
		0.045948,
		0.066665,
		0.098629,
		0.154404,
		0.221649,
		0.277359,
		0.269865,
		0.212347,
		0.206848,
		0.197768,
		0.211494,
		0.191496,
		0.136765,
		0.308024,
		0.319020,
		0.258136,
		0.240994,
		0.141069,
		0.102378,
		0.025987,
		-0.022245,
		-0.094382,
		-0.119834,
		-0.083154,
		-0.169315,
		-0.137188,
		-0.205023,
		-0.138965,
		-0.185616,
		-0.179726,
		-0.203931,
		-0.295226,
		-0.398856,
		-0.421418,
		-0.496137,
		-0.513299,
		-0.628241,
		-0.582678,
		-0.617480,
		-0.604683,
		-0.483266,
		-0.488041,
		-0.478928,
		-0.396649,
		-0.400967,
		-0.367784,
		-0.272760,
		-0.286229,
		-0.232722,
		-0.172423,
		-0.174262,
		-0.140901,
		-0.078549,
		-0.036742,
		0.017347,
		0.165544,
		0.189453,
		0.286666,
		0.349712,
		0.396280,
		0.441292,
		0.521691,
		0.686200,
		0.624832,
		0.712301,
		0.762581,
		0.771422,
		0.833386,
		0.768297,
		0.745445,
		0.717463,
		0.621088,
		0.598524,
		0.475000,
		0.394790,
		0.284536,
		0.301335,
		0.278653,
		0.291031,
		0.225727,
		0.168563,
		0.269950,
		0.178675,
		0.159990,
		0.206742,
		0.025956,
		0.118796,
		-0.011082,
		-0.048423,
		-0.090247,
		-0.145547,
		-0.171559,
		-0.383218,
		-0.336044,
		-0.335297,
		-0.454717,
		-0.445554,
		-0.310168,
		-0.270613,
		-0.322990,
		-0.201401,
		-0.066784,
		-0.194034,
		-0.237833,
		-0.251064,
		-0.178885,
		-0.314606,
		-0.325276,
		-0.070883,
		-0.195115,
		-0.128372,
		-0.204522,
		-0.017776,
		0.007172,
		-0.029349,
		0.024277,
		0.005817,
		0.154387,
		0.073135,
		0.028594,
		0.069399,
		-0.025481,
		0.082714,
		-0.051864,
		0.064481,
		0.048003,
		0.079835,
		0.158942,
		0.070428,
		0.175059,
		0.149537,
		0.111723,
		0.177217,
		0.112847,
		0.232642,
		0.186536,
		0.279435,
		0.425961,
		0.321680,
		0.323905,
		0.156371,
		0.313540,
		0.131484,
		0.085213,
		0.114872,
		0.014248,
		0.109634,
		0.005071,
		0.116842,
		0.008784,
		-0.046426,
		-0.075301,
		-0.208927,
		-0.101870,
		-0.291817,
		-0.120288,
		-0.138121,
		-0.324663,
		-0.325776,
		-0.389875,
		-0.289874,
		-0.440235,
		-0.400789,
		-0.227050,
		-0.408720,
		-0.416245,
		-0.543447,
		-0.271495,
		-0.532640,
		-0.485717,
		-0.462286,
		-0.522236,
		-0.364495,
		-0.661639,
		-0.434507,
		-0.435101,
		-0.519847,
		-0.333998,
		-0.407475,
		-0.112046,
		-0.412342,
		-0.305653,
		-0.167584,
		-0.285491,
		-0.067900,
		-0.163248,
		0.142845,
		0.052381,
		0.205831,
		0.278967,
		0.215570,
		0.358756,
		0.168265,
		0.421986,
		0.377146,
		0.339187,
		0.472457,
		0.268562,
		0.553885,
		0.292038,
		0.535230,
		0.440476,
		0.477110,
		0.680821,
		0.387234,
		0.583883,
		0.318999,
		0.511447,
		0.385647,
		0.223383,
		0.402970,
		0.092974,
		0.261344,
		-0.163391,
		0.035608,
		-0.049947,
		-0.088732,
		0.148412,
		-0.248280,
		0.038935,
		-0.255804,
		-0.175902,
		-0.228628,
		-0.187850,
		-0.042215,
		-0.355790,
		-0.098591,
		-0.327980,
		-0.206520,
		-0.259979,
		-0.411946,
		-0.189813,
		-0.424205,
		-0.288150,
		-0.652524,
		-0.329790,
		-0.349972,
		-0.625130,
		-0.400951,
		-0.524323,
		-0.298822,
		-0.494077,
		-0.290642,
		-0.360750,
		-0.313073,
		-0.142587,
		-0.203354,
		0.150776,
		0.067502,
		0.287502,
		0.403091,
		0.453357,
		0.479646,
		0.411367,
		0.611268,
		0.360456,
		0.561714,
		0.476884,
		0.630631,
		0.704926,
		0.612145,
		0.775713,
		0.653513,
		0.660360,
		0.631286,
		0.649189,
		0.563066,
		0.607603,
		0.684318,
		0.486032,
		0.524779,
		0.396270,
		0.435933,
		0.472485,
		0.484994,
		0.411683,
		0.566863,
		0.461844,
		0.297756,
		0.249314,
		-0.034316,
		-0.002815,
		-0.069035,
		-0.150091,
		-0.122389,
		-0.048674,
		-0.195669,
		-0.104595,
		-0.253445,
		-0.419844,
		-0.423045,
		-0.476372,
		-0.535482,
		-0.411015,
		-0.578746,
		-0.593766,
		-0.548622,
		-0.779450,
		-0.660620,
		-0.767813,
		-0.647031,
		-0.599349,
		-0.660489,
		-0.593555,
		-0.546134,
		-0.589172,
		-0.512768,
		-0.414064,
		-0.549338,
		-0.289018,
		-0.450922,
		-0.164359,
		-0.129553,
		-0.178566,
		0.026469,
		0.029332,
		0.051983,
		0.217585,
		0.262210,
		0.274248,
		0.569405,
		0.289438,
		0.490225,
		0.436317,
		0.352470,
		0.391134,
		0.535820,
		0.361684,
		0.601958,
		0.532400,
		0.593797,
		0.589727,
		0.456317,
		0.548699,
		0.388615,
		0.433911,
		0.306803,
		0.301961,
		0.133452,
		0.227699,
		-0.123912,
		-0.045958,
		-0.128706,
		-0.201154,
		-0.210008,
		-0.176819,
		-0.339317,
		-0.258533,
		-0.381029,
		-0.354570,
		-0.474772,
		-0.463227,
		-0.480757,
		-0.544101,
		-0.603486,
		-0.540736,
		-0.509056,
		-0.437901,
		-0.285002,
		-0.329485,
		-0.176417,
		-0.232563,
		-0.206943,
		-0.152871,
		-0.105935,
		-0.190744,
		-0.167034,
		-0.072261,
		-0.075764,
		0.020921,
		0.027975,
		0.138028,
		0.073842,
		0.158599,
		0.207730,
		0.243911,
		0.361925,
		0.276072,
		0.186369,
		0.182812,
		0.315213,
		0.225667,
		0.279458,
		0.279106,
		0.229952,
		0.281643,
		0.109924,
		0.047267,
		0.010780,
		-0.026363,
		-0.004366,
		-0.019969,
		0.052757,
		-0.085651,
		-0.125307,
		-0.233071,
		-0.210441,
		-0.254052,
		-0.220926,
		-0.026652,
		-0.148102,
		-0.106173,
		-0.102851,
		-0.119707,
		-0.084843,
		-0.073847,
		0.041419,
		0.110645,
		0.167700,
		0.219777,
		0.258030,
		0.329629,
		0.213515,
		0.156217,
		0.272885,
		0.166014,
		0.288582,
		0.239181,
		0.398137,
		0.405753,
		0.422593,
		0.360816,
		0.248967,
		0.308789,
		0.278123,
		0.265113,
		0.229970,
		0.208727,
		0.101412,
		0.039601,
		-0.015970,
		-0.161413,
		-0.166002,
		-0.175251,
		-0.168636,
		-0.247494,
		-0.352687,
		-0.333003,
		-0.451405,
		-0.447797,
		-0.550531,
		-0.594335,
		-0.613741,
		-0.622395,
		-0.687601,
		-0.620089,
		-0.655834,
		-0.604519,
		-0.549291,
		-0.453566,
		-0.496165,
		-0.442260,
		-0.540827,
		-0.499169,
		-0.355692,
		-0.233117,
		-0.242202,
		-0.198420,
		-0.099684,
		-0.109491,
		-0.001382,
		0.103792,
		0.215849,
		0.176897,
		0.268821,
		0.220491,
		0.424992,
		0.600045,
		0.550292,
		0.642893,
		0.663918,
		0.500550,
		0.558544,
		0.513629,
		0.420544,
		0.476142,
		0.409247,
		0.321227,
		0.474651,
		0.490860,
		0.456837,
		0.485015,
		0.358775,
		0.357147,
		0.327333,
		0.311324,
		0.178868,
		0.186396,
		0.169774,
		0.074705,
		0.078013,
		0.009682,
		-0.023409,
		-0.121673,
		-0.171503,
		-0.315241,
		-0.236765,
		-0.250959,
		-0.399859,
		-0.203578,
		-0.332537,
		-0.312155,
		-0.170302,
		-0.360952,
		-0.340088,
		-0.256296,
		-0.344048,
		-0.233855,
		-0.238382,
		-0.325209,
		-0.313119,
		-0.361670,
		-0.433470,
		-0.307136,
		-0.166902,
		-0.201526,
		-0.136644,
		-0.169544,
		-0.112125,
		-0.121764,
		-0.001914,
		0.011852,
		-0.051996,
		0.176075,
		0.083198,
		0.090884,
		0.399299,
		0.216472,
		0.469058,
		0.680075,
		0.616443,
		0.736707,
		0.934372,
		0.757503,
		0.872690,
		0.825597,
		0.609801,
		0.672154,
		0.616823,
		0.533117,
		0.614112,
		0.573135,
		0.388945,
		0.292600,
		0.307390,
		0.194164,
		0.216854,
		0.070275,
		-0.104817,
		-0.080698,
		-0.250418,
		-0.336846,
		-0.221034,
		-0.357654,
		-0.450084,
		-0.289130,
		-0.516800,
		-0.491518,
		-0.444050,
		-0.649928,
		-0.514339,
		-0.505282,
		-0.583501,
		-0.384016,
		-0.471535,
		-0.425789,
		-0.395106,
		-0.466319,
		-0.282283,
		-0.245170,
		-0.249695,
		-0.204467,
		-0.197599,
		-0.031397,
		-0.084914,
		-0.102276,
		0.032083,
		0.002582,
		0.034369,
		0.046287,
		-0.026504,
		0.001017,
		-0.120569,
		0.036915,
		0.101774,
		0.018494,
		0.239294,
		0.145390,
		0.067074,
		0.178357,
		0.184484,
		0.219278,
		0.155611,
		0.139081,
		0.146611,
		0.051842,
		0.039854,
		0.023799,
		0.053269,
		0.022032,
		0.018674,
		-0.020117,
		-0.068526,
		0.016178,
		-0.025533,
		0.032216,
		0.121676,
		-0.117124,
		-0.116022,
		-0.140806,
		-0.245642,
		-0.099470,
		-0.261496,
		-0.221249,
		-0.159138,
		-0.323766,
		-0.173465,
		-0.199735,
		-0.174629,
		0.005017,
		-0.236949,
		-0.095553,
		-0.151967,
		-0.203221,
		-0.100747,
		-0.162687,
		0.043460,
		-0.163791,
		-0.108942,
		0.026898,
		-0.064230,
		0.131986,
		-0.127891,
		-0.025055,
		-0.009781,
		0.039274,
		0.123295,
		0.115752,
		0.188782,
		0.039692,
		0.085940,
		0.243006,
		0.115860,
		0.178581,
		0.185845,
		0.235763,
		0.228809,
		0.261938,
		0.294358,
		0.281622,
		0.392828,
		0.292215,
		0.415168,
		0.486171,
		0.540642,
		0.650889,
		0.425616,
		0.432061,
		0.280935,
		0.280937,
		0.267214,
		0.240311,
		0.390879,
		0.198895,
		0.350117,
		0.036856,
		0.096674,
		0.083957,
		-0.179446,
		-0.141714,
		-0.505694,
		-0.312821,
		-0.559927,
		-0.534487,
		-0.442197,
		-0.785636,
		-0.452871,
		-0.716232,
		-0.561494,
		-0.573773,
		-0.504332,
		-0.443242,
		-0.503203,
		-0.462494,
		-0.510979,
		-0.386883,
		-0.362571,
		-0.427209,
		-0.278751,
		-0.224703,
		-0.303023,
		-0.127940,
		-0.262841,
		-0.079757,
		-0.106522,
		-0.079800,
		0.177888,
		0.035219,
		0.215518,
		0.115894,
		0.241806,
		0.271083,
		0.230983,
		0.250689,
		0.224107,
		0.213052,
		0.273436,
		0.290021,
		0.250955,
		0.330823,
		0.271082,
		0.401589,
		0.373418,
		0.293201,
		0.232799,
		0.203407,
		0.356599,
		0.241049,
		0.416727,
		0.244099,
		0.231948,
		0.284200,
		0.094447,
		0.250188,
		0.113033,
		0.174922,
		0.134359,
		-0.054745,
		0.101310,
		0.011027,
		0.098469,
		-0.004255,
		-0.011673,
		0.020156,
		-0.098448,
		0.008001,
		-0.116362,
		-0.021188,
		-0.072880,
		-0.100247,
		-0.176504,
		-0.165526,
		-0.148250,
		-0.072479,
		-0.229214,
		-0.211064,
		-0.285298,
		-0.213275,
		-0.197926,
		-0.272330,
		-0.026165,
		-0.235244,
		-0.005285,
		-0.207472,
		-0.214580,
		-0.096460,
		-0.116549,
		-0.028931,
		0.071973,
		0.110619,
		0.213799,
		0.137037,
		0.280155,
		0.271034,
		0.384707,
		0.391653,
		0.433250,
		0.413162,
		0.271506,
		0.322516,
		0.062272,
		0.171019,
		0.100133,
		0.084133,
		0.192881,
		0.257377,
		0.323781,
		0.185059,
		0.182473,
		0.225453,
		0.007855,
		0.203239,
		-0.065225,
		-0.002632,
		-0.146662,
		-0.212811,
		-0.144943,
		-0.123155,
		-0.129107,
		-0.147371,
		-0.142448,
		-0.341836,
		-0.466677,
		-0.391197,
		-0.337890,
		-0.247356,
		-0.287986,
		-0.120492,
		0.028362,
		-0.150761,
		-0.060515,
		-0.208294,
		-0.055598,
		-0.113344,
		-0.026643,
		0.070378,
		-0.079967,
		-0.042967,
		-0.145994,
		-0.079663,
		-0.171707,
		-0.025985,
		0.069534,
		-0.082029,
		0.032540,
		-0.225199,
		-0.057142,
		-0.214455,
		-0.258389,
		-0.074008,
		-0.429504,
		-0.289572,
		-0.489565,
		-0.477044,
		-0.469911,
		-0.524898,
		-0.285299,
		-0.500293,
		-0.304081,
		-0.320585,
		-0.181633,
		-0.278589,
		-0.384544,
		-0.159638,
		-0.348926,
		-0.076650,
		-0.124735,
		-0.014950,
		-0.026637,
		-0.197375,
		0.024523,
		-0.033498,
		0.220739,
		0.145080,
		0.280317,
		0.366241,
		0.202114,
		0.559714,
		0.449650,
		0.676215,
		0.633352,
		0.665628,
		0.811044,
		0.639415,
		0.968994,
		0.697039,
		0.876179,
		0.847865,
		0.787464,
		1.000000,
		0.683722,
		0.866020,
		0.571637,
		0.574605,
		0.453005,
		0.331090,
		0.377097,
		0.019776,
		0.258291,
		-0.102803,
		-0.064039,
		-0.310203,
		-0.307582,
		-0.265889,
		-0.626171,
		-0.454206,
		-0.785738,
		-0.735535,
		-0.949281,
		-0.897817,
		-0.848173,
		-0.957371,
		-0.733746,
		-0.809470,
		-0.706876,
		-0.804367,
		-0.639194,
		-0.573304,
		-0.589036,
		-0.411390,
		-0.384386,
		-0.315793,
		-0.282483,
		-0.147725,
		-0.041921,
		0.106276,
		0.247353,
		0.355652,
		0.463347,
		0.532307,
		0.445756,
		0.657897,
		0.533343,
		0.571698,
		0.682260,
		0.683790,
		0.719023,
		0.568042,
		0.671269,
		0.497033,
		0.618109,
		0.485324,
		0.501142,
		0.334664,
		0.240022,
		0.241766,
		0.162895,
		0.212102,
		0.093167,
		0.023130,
		-0.067172,
		-0.064103,
		-0.125296,
		-0.065211,
		-0.418091,
		-0.484649,
		-0.534526,
		-0.431767,
		-0.613126,
		-0.421912,
		-0.328599,
		-0.314750,
		-0.419914,
		-0.349459,
		-0.304160,
		-0.421398,
		-0.450246,
		-0.327367,
		-0.231089,
		-0.386295,
		-0.471400,
		-0.484200,
		-0.278189,
		-0.462876,
		-0.345678,
		-0.285362,
		-0.157879,
		-0.206790,
		-0.277744,
		-0.330778,
		-0.343873,
		-0.399365,
		-0.257860,
		-0.176014,
		-0.127358,
		-0.309176,
		-0.198599,
		-0.176289,
		-0.150217,
		0.013347,
		0.086293,
		0.140574,
		0.124480,
		0.184931,
		0.237282,
		0.386343,
		0.594265,
		0.720393,
		0.592481,
		0.461693,
		0.494746,
		0.453604,
		0.370187,
		0.357849,
		0.290702,
		0.328879,
		0.224488,
		0.279696,
		0.245626,
		0.285871,
		0.286351,
		0.258406,
		0.273554,
		0.235340,
		0.158184,
		0.195467,
		0.020074,
		-0.086862,
		-0.077196,
		-0.061511,
		-0.135461,
		-0.219233,
		0.007206,
		-0.016161,
		-0.127073,
		-0.089690,
		-0.091058,
		-0.116385,
		-0.171066,
		-0.174710,
		-0.150648,
		-0.307188,
		-0.348776,
		-0.315885,
		-0.221577,
		-0.342162,
		-0.356428,
		-0.393254,
		-0.253087,
		-0.168008,
		-0.149842,
		-0.149194,
		-0.195245,
		-0.168748,
		-0.247854,
		-0.246699,
		-0.195081,
		-0.371936,
		-0.266545,
		-0.242329,
		-0.164455,
		-0.189514,
		-0.110973,
		0.039014,
		0.043519,
		0.047494,
		0.022406,
		0.138003,
		0.117139,
		0.207836,
		0.202812,
		0.430679,
		0.489535,
		0.439317,
		0.461788,
		0.468531,
		0.485348,
		0.510297,
		0.520814,
		0.582089,
		0.501776,
		0.468408,
		0.512228,
		0.421207,
		0.462444,
		0.395973,
		0.395949,
		0.335440,
		0.301514,
		0.163922,
		0.100460,
		0.111995,
		0.033962,
		0.119042,
		0.123634,
		0.088884,
		0.068945,
		0.024593,
		-0.001600,
		-0.101447,
		0.075173,
		0.068721,
		0.038428,
		0.172700,
		0.162592,
		0.163771,
		-0.021553,
		0.043929,
		0.001687,
		-0.063266,
		-0.142477,
		-0.119697,
		-0.092087,
		-0.181886,
		-0.146038,
		-0.183599,
		-0.146861,
		-0.190610,
		-0.188163,
		-0.169051,
		-0.209705,
		-0.320176,
		-0.405814,
		-0.388575,
		-0.320901,
		-0.311826,
		-0.363095,
		-0.303401,
		-0.388067,
		-0.454499,
		-0.511369,
		-0.570122,
		-0.491132,
		-0.428400,
		-0.362058,
		-0.302700,
		-0.335203,
		-0.295240,
		-0.370370,
		-0.299573,
		-0.209047,
		-0.166512,
		-0.075955,
		-0.001033,
		-0.024581,
		-0.062747,
		-0.017634,
		-0.021729,
		0.025855,
		0.164194,
		0.234407,
		0.397491,
		0.352535,
		0.329169,
		0.392870,
		0.478951,
		0.458305,
		0.427400,
		0.587284,
		0.561499,
		0.580377,
		0.439757,
		0.366206,
		0.388484,
		0.329039,
		0.370369,
		0.347037,
		0.348809,
		0.241065,
		0.087970,
		0.070229,
		0.034309,
		-0.007884,
		0.000321,
		-0.108109,
		-0.198401,
		-0.204912,
		-0.311528,
		-0.401289,
		-0.421695,
		-0.367640,
		-0.332453,
		-0.283722,
		-0.286635,
		-0.318467,
		-0.411914,
		-0.400846,
		-0.352896,
		-0.458864,
		-0.429605,
		-0.530346,
		-0.529143,
		-0.574863,
		-0.467163,
		-0.281397,
		-0.265311,
		-0.161563,
		-0.135003,
		-0.097762,
		-0.133251,
		-0.091732,
		0.070168,
		-0.006021,
		0.024155,
		0.009583,
		0.046153,
		0.155107,
		0.144119,
		0.318383,
		0.348443,
		0.347002,
		0.428513,
		0.483116,
		0.478173,
		0.411558,
		0.451289,
		0.362776,
		0.315132,
		0.378835,
		0.378033,
		0.381200,
		0.244299,
		0.258325,
		0.222343,
		0.178915,
		0.233835,
		0.236078,
		0.232476,
		0.215557,
		0.123463,
		0.181456,
		0.159956,
		0.146401,
		0.084576,
		0.017899,
		0.058293,
		-0.006218,
		-0.021502,
		-0.075278,
		-0.082576,
		-0.041149,
		-0.098687,
		-0.003460,
		0.018049,
		0.010835,
		-0.034439,
		-0.090097,
		-0.143134,
		-0.243241,
		-0.219570,
		-0.200600,
		-0.338918,
		-0.310450,
		-0.328397,
		-0.310721,
		-0.380476,
		-0.367751,
		-0.296607,
		-0.356454,
		-0.334252,
		-0.425687,
		-0.486921,
		-0.466791,
		-0.479577,
		-0.344343,
		-0.387385,
		-0.388743,
		-0.397426,
		-0.380558,
		-0.314189,
		-0.302064,
		-0.205353,
		-0.173729,
		-0.185586,
		-0.083738,
		0.055234,
		0.222709,
		0.187548,
		0.300616,
		0.302858,
		0.299468,
		0.383375,
		0.339901,
		0.443806,
		0.320438,
		0.295702,
		0.224998,
		0.257378,
		0.326365,
		0.358171,
		0.465537,
		0.454510,
		0.466434,
		0.299024,
		0.105688,
		0.152593,
		0.150669,
		0.133656,
		0.112162,
		-0.003661,
		-0.035183,
		-0.129511,
		-0.234428,
		-0.148158,
		-0.151291,
		-0.089916,
		-0.014740,
		0.020828,
		0.022472,
		0.007265,
		-0.002981,
		-0.096027,
		-0.112557,
		-0.076823,
		-0.103846,
		-0.049572,
		-0.208220,
		-0.186251,
		-0.189185,
		-0.174595,
		-0.168827,
		-0.041334,
		0.065970,
		0.101772,
		0.183479,
		0.201684,
		0.343225,
		0.393006,
		0.317839,
		0.375596,
		0.311199,
		0.451334,
		0.375808,
		0.290300,
		0.311532,
		0.204733,
		0.211955,
		0.113132,
		0.039097,
		0.145717,
		-0.067908,
		-0.117333,
		-0.188049,
		-0.117851,
		-0.089240,
		-0.101522,
		-0.091955,
		-0.136106,
		-0.104394,
		-0.187789,
		-0.256670,
		-0.182457,
		-0.244914,
		-0.140842,
		-0.222853,
		-0.179197,
		-0.201307,
		-0.277430,
		-0.184590,
		-0.356814,
		-0.284800,
		-0.242824,
		-0.236084,
		-0.183007,
		-0.253231,
		-0.129034,
		-0.023366,
		0.089303,
		0.252217,
		0.049980,
		0.071302,
		-0.069147,
		-0.052713,
		0.058385,
		0.028231,
		0.209536,
		0.122856,
		0.214507,
		0.338006,
		0.410524,
		0.484762,
		0.377972,
		0.458045,
		0.376874,
		0.418499,
		0.445113,
		0.325606,
		0.454125,
		0.345083,
		0.294719,
		0.275951,
		0.169837,
		0.147111,
		-0.127438,
		-0.042508,
		-0.112652,
		-0.110503,
		-0.224445,
		-0.416897,
		-0.345702,
		-0.542555,
		-0.430199,
		-0.436360,
		-0.340051,
		-0.301217,
		-0.411694,
		-0.327848,
		-0.530126,
		-0.323680,
		-0.451782,
		-0.461023,
		-0.394957,
		-0.359112,
		-0.160399,
		-0.281930,
		-0.105896,
		-0.228934,
		-0.195027,
		-0.065711,
		-0.064587,
		0.136497,
		-0.055448,
		0.026314,
		-0.129820,
		-0.018711,
		0.080776,
		-0.019888,
		0.250416,
		0.003297,
		0.206182,
		0.014372,
		0.113046,
		0.188271,
		0.054789,
		0.264983,
		0.006112,
		0.282028,
		0.137877,
		0.297612,
		0.388391,
		0.169245,
		0.365799,
		0.018551,
		0.151123,
		-0.047912,
		-0.035193,
		-0.056860,
		-0.247449,
		-0.092670
};

#endif /* SIGNAL_OF_INTEREST_H_ */