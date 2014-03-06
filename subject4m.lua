return {
  constraint_sets = {
    RightToeLeftFlat = {
      {
        point = "right_toe",
        normal = { 1, 0, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 1, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 0, 1,},
      },
      {
        point = "left_heel",
        normal = { 1, 0, 0,},
      },
      {
        point = "left_heel",
        normal = { 0, 1, 0,},
      },
      {
        point = "left_heel",
        normal = { 0, 0, 1,},
      },
      {
        point = "left_toe",
        normal = { 0, 1, 0,},
      },
      {
        point = "left_toe",
        normal = { 0, 0, 1,},
      },
      {
        point = "left_hallux",
        normal = { 0, 0, 1,},
      },
    },
    RightToeLeftHeel = {
      {
        point = "right_toe",
        normal = { 1, 0, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 1, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 0, 1,},
      },
      {
        point = "left_heel",
        normal = { 1, 0, 0,},
      },
      {
        point = "left_heel",
        normal = { 0, 1, 0,},
      },
      {
        point = "left_heel",
        normal = { 0, 0, 1,},
      },
    },
    RightToe = {
      {
        point = "right_toe",
        normal = { 1, 0, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 1, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 0, 1,},
      },
    },
    RightFlat = {
      {
        point = "right_heel",
        normal = { 1, 0, 0,},
      },
      {
        point = "right_heel",
        normal = { 0, 1, 0,},
      },
      {
        point = "right_heel",
        normal = { 0, 0, 1,},
      },
      {
        point = "right_toe",
        normal = { 0, 1, 0,},
      },
      {
        point = "right_toe",
        normal = { 0, 0, 1,},
      },
      {
        point = "right_hallux",
        normal = { 0, 0, 1,},
      },
    },
  },
  frames = {
    {
      visuals = {
        {
          mesh_center = { 0, 0, 0.064999997615814,},
          name = "lower_trunk",
          color = { 0.2, 0.2, 0.9,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.38654804229736, 0.12999999523163,},
        },
      },
      joint_frame = {
        r = { 0, 0, 0,},
      },
      name = "Pelvis",
      parent = "ROOT",
      joint = {
        { 0, 0, 0, 1, 0, 0,},
        { 0, 0, 0, 0, 1, 0,},
        { 0, 0, 0, 0, 0, 1,},
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        LPSI = { -0.098855637013912, 0.044646013528109, 0.11880061030388,},
        LASI = { 0.083650417625904, 0.12620507180691, 0.067356839776039,},
        RPSI = { -0.08820316940546, -0.054943259805441, 0.11467726528645,},
        RASI = { 0.10582964867353, -0.097413830459118, 0.07020677626133,},
      },
      body = {
        inertia = {
          { 0.089554032165422, 0, 0,},
          { 0, 0.08023458816772, 0,},
          { 0, 0, 0.085476775416427,},
        },
        mass = 8.2658,
        com = { 0, 0, 0.089044375071798,},
        length = 0.1456163124641,
        name = "lower_trunk",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.20999999344349,},
          name = "Thigh",
          color = { 1, 0.1, 0.1,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.41999998688698,},
        },
      },
      joint_frame = {
        r = { 0, -0.079999998211861, 0,},
      },
      name = "Thigh_r",
      parent = "Pelvis",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        RTHI = { 0.014473870396614, -0.098405137658119, -0.14348235726357,},
      },
      body = {
        inertia = {
          { 0.13882155, 0, 0,},
          { 0, 0.13882155, 0,},
          { 0, 0, 0.06287055,},
        },
        mass = 10.4784,
        com = { 0, 0, -0.172788525,},
        length = 0.42195,
        name = "Thigh",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.20999999344349,},
          name = "Shank",
          color = { 1, 0.2, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.41999998688698,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.41999998688698,},
      },
      name = "Shank_r",
      parent = "Thigh_r",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
      },
      markers = {
        RTIB = { -0.0098632527515292, -0.079710520803928, -0.10004692524672,},
        RKNE = { 0.0057679004967213, -0.067837432026863, -0.001219313708134,},
      },
      body = {
        inertia = {
          { 0.11221173, 0, 0,},
          { 0, 0.109571454, 0,},
          { 0, 0, 0.045324738,},
        },
        mass = 3.2042,
        com = { 0, 0, -0.1961725068,},
        length = 0.440046,
        name = "Shank",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0.049971280873061, 0, -0.015834,},
          name = "Foot",
          color = { 1, 0.2, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.24985640436531, 0.1914, 0.031668,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.41999998688698,},
      },
      name = "Foot_r",
      parent = "Shank_r",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        RHEE = { -0.046091351658106, 0.0087825767695904, -0.021214488893747,},
        RANK = { 0.008694083429873, -0.034317564219236, -0.0012364519061521,},
        RTOE = { 0.15490427613258, 0.0096264695748687, -0.026593578979373,},
      },
      body = {
        inertia = {
          { 0.064213095921884, 0, 0,},
          { 0, 0.0612148190695, 0,},
          { 0, 0, 0.030982194141298,},
        },
        mass = 1.0138,
        com = { 0.099942561746123, 0, -0.11031160252728,},
        length = 0.24985640436531,
        name = "Foot",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.20999999344349,},
          name = "Thigh",
          color = { 0.1, 1, 0.1,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.41999998688698,},
        },
      },
      joint_frame = {
        r = { 0, 0.079999998211861, 0,},
      },
      name = "Thigh_l",
      parent = "Pelvis",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        LTHI = { 0.001963818911463, 0.10331982374191, -0.26663121581078,},
      },
      body = {
        inertia = {
          { 0.13882155, 0, 0,},
          { 0, 0.13882155, 0,},
          { 0, 0, 0.06287055,},
        },
        mass = 10.4784,
        com = { 0, 0, -0.172788525,},
        length = 0.42195,
        name = "Thigh",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.20999999344349,},
          name = "Shank",
          color = { 0.2, 1, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.41999998688698,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.41999998688698,},
      },
      name = "Shank_l",
      parent = "Thigh_l",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
      },
      markers = {
        LTIB = { -0.0056071681901813, 0.080026365816593, -0.25045505166054,},
        LKNE = { -0.00051187601638958, 0.083031512796879, 0.00081911636516452,},
      },
      body = {
        inertia = {
          { 0.11221173, 0, 0,},
          { 0, 0.109571454, 0,},
          { 0, 0, 0.045324738,},
        },
        mass = 3.2042,
        com = { 0, 0, -0.1961725068,},
        length = 0.440046,
        name = "Shank",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0.049971280873061, 0, -0.015834,},
          name = "Foot",
          color = { 0.2, 1, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.24985640436531, 0.1914, 0.031668,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.41999998688698,},
      },
      name = "Foot_l",
      parent = "Shank_l",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        LANK = { 0.00048343650996685, 0.043194275349379, -0.00054500688565895,},
        LHEE = { -0.045937176793814, -0.0077394475229084, -0.033118315041065,},
        LTOE = { 0.15848007798195, 0.0036904702428728, -0.02591516263783,},
      },
      body = {
        inertia = {
          { 0.064213095921884, 0, 0,},
          { 0, 0.0612148190695, 0,},
          { 0, 0, 0.030982194141298,},
        },
        mass = 1.0138,
        com = { 0.099942561746123, 0, -0.11031160252728,},
        length = 0.24985640436531,
        name = "Foot",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, 0.10000000149012,},
          name = "MiddleTrunk",
          color = { 0.2, 1, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.42073199152946, 0.20000000298023,},
        },
      },
      joint_frame = {
        r = { 0, 0, 0.12999999523163,},
      },
      name = "MiddleTrunk",
      parent = "Pelvis",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        T10 = { -0.091649927198887, 0.0042447773739696, 0.20339554548264,},
        STRN = { 0.13727506995201, 0.02098678983748, 0.20348888635635,},
      },
      body = {
        inertia = {
          { 0.10381133831132, 0, 0,},
          { 0, 0.082489092475589, 0,},
          { 0, 0, 0.10079607122343,},
        },
        mass = 12.0842,
        com = { 0, 0, 0.096962374497415,},
        length = 0.21537622056289,
        name = "MiddleTrunk",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, -0.005000002682209, 0.093039065599442,},
          name = "UpperTrunk",
          color = { 0.2, 1, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.42532199621201, 0.18607813119888,},
        },
      },
      joint_frame = {
        r = { 0, 0, 0.20000000298023,},
      },
      name = "UpperTrunk",
      parent = "MiddleTrunk",
      markers = {
        CLAV = { 0.07780272513628, -0.0096961818635464, 0.21372811496258,},
        C7 = { -0.061922062188387, -0.015905136242509, 0.28510349988937,},
      },
      body = {
        inertia = {
          { 0.12219027570362, 0, 0,},
          { 0, 0.077427501435956, 0,},
          { 0, 0, 0.11251183802412,},
        },
        mass = 11.8104,
        com = { 0, 0, 0.1225774132108,},
        length = 0.24196094198736,
        name = "UpperTrunk",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.15500000119209,},
          name = "UpperArm",
          color = { 1, 0.1, 0.1,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.23999997973442,},
        },
      },
      joint_frame = {
        r = { 0, -0.20000000298023, 0.18999999761581,},
      },
      name = "UpperArm_r",
      parent = "UpperTrunk",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        RUPA = { -0.0091715008020401, -0.012074896134436, -0.19867531955242,},
      },
      body = {
        inertia = {
          { 0.08023662, 0, 0,},
          { 0, 0.075732108, 0,},
          { 0, 0, 0.044482056,},
        },
        mass = 2.0054,
        com = { 0, 0, -0.1625002704,},
        length = 0.281532,
        name = "UpperArm",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.12999999523163,},
          name = "LowerArm",
          color = { 1, 0.2, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.25999999046326,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.31000000238419,},
      },
      name = "LowerArm_r",
      parent = "UpperArm_r",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
      },
      markers = {
        RWRA = { 0.028811048716307, 0.013812097720802, -0.26795703172684,},
        RELB = { 0.0028007118962705, -0.016225827857852, -0.0048297182656825,},
        RWRB = { -0.046302698552608, -0.022073410451412, -0.2630327641964,},
      },
      body = {
        inertia = {
          { 0.074149056, 0, 0,},
          { 0, 0.07119384, 0,},
          { 0, 0, 0.032507376,},
        },
        mass = 1.1988,
        com = { 0, 0, -0.1228832544,},
        length = 0.268656,
        name = "LowerArm",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.043065,},
          name = "Hand",
          color = { 1, 0.3, 0.3,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.1392, 0.1392, 0.08613,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.25999999046326,},
      },
      name = "Hand_r",
      parent = "LowerArm_r",
      joint = {},
      body = {
        inertia = {
          { 0.05408964, 0, 0,},
          { 0, 0.04418469, 0,},
          { 0, 0, 0.03453813,},
        },
        mass = 0.4514,
        com = { 0, 0, -0.0680427,},
        length = 0.08613,
        name = "Hand",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.15500000119209,},
          name = "UpperArm",
          color = { 0.1, 1, 0.1,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.31000000238419,},
        },
      },
      joint_frame = {
        r = { 0, 0.18999999761581, 0.20000000298023,},
      },
      name = "UpperArm_l",
      parent = "UpperTrunk",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        LUPA = { -0.020957767963409, 0.038117289543152, -0.053999658674002,},
      },
      body = {
        inertia = {
          { 0.08023662, 0, 0,},
          { 0, 0.075732108, 0,},
          { 0, 0, 0.044482056,},
        },
        mass = 2.0054,
        com = { 0, 0, -0.1625002704,},
        length = 0.281532,
        name = "UpperArm",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.12999999523163,},
          name = "LowerArm",
          color = { 0.2, 1, 0.2,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.13920000195503, 0.13920000195503, 0.25999999046326,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.31000000238419,},
      },
      name = "LowerArm_l",
      parent = "UpperArm_l",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
      },
      markers = {
        LELB = { 0.010974816046655, 0.03166963160038, 0.0035079540684819,},
        LWRA = { 0.03827391564846, -0.023187652230263, -0.26211893558502,},
        LWRB = { -0.028132054954767, 0.024745386093855, -0.25308811664581,},
      },
      body = {
        inertia = {
          { 0.074149056, 0, 0,},
          { 0, 0.07119384, 0,},
          { 0, 0, 0.032507376,},
        },
        mass = 1.1988,
        com = { 0, 0, -0.1228832544,},
        length = 0.268656,
        name = "LowerArm",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, -0.043065,},
          name = "Hand",
          color = { 0.3, 1, 0.3,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.1392, 0.1392, 0.08613,},
        },
      },
      joint_frame = {
        r = { 0, 0, -0.25999999046326,},
      },
      name = "Hand_l",
      parent = "LowerArm_l",
      joint = {},
      body = {
        inertia = {
          { 0.05408964, 0, 0,},
          { 0, 0.04418469, 0,},
          { 0, 0, 0.03453813,},
        },
        mass = 0.4514,
        com = { 0, 0, -0.0680427,},
        length = 0.08613,
        name = "Hand",
      },
    },
    {
      visuals = {
        {
          mesh_center = { 0, 0, 0.121365,},
          name = "Head",
          color = { 0.1, 0.1, 1,},
          src = "meshes/unit_cube.obj",
          dimensions = { 0.1392, 0.1392, 0.24273,},
        },
      },
      joint_frame = {
        r = { 0, 0, 0.28000000119209,},
      },
      name = "Head",
      parent = "UpperTrunk",
      joint = {
        { 0, 1, 0, 0, 0, 0,},
        { 1, 0, 0, 0, 0, 0,},
        { 0, 0, 1, 0, 0, 0,},
      },
      markers = {
        LFHD = { 0.072681158781052, 0.069479957222939, 0.21994252502918,},
        LBHD = { -0.03630343452096, 0.090551026165485, 0.17667463421822,},
        RFHD = { 0.079903699457645, -0.067612111568451, 0.21674621105194,},
        RBHD = { -0.052942741662264, -0.086700826883316, 0.16705107688904,},
      },
      body = {
        inertia = {
          { 0.07354719, 0, 0,},
          { 0, 0.07645995, 0,},
          { 0, 0, 0.06335253,},
        },
        mass = 5.1356,
        com = { 0, 0, 0.121413546,},
        length = 0.24273,
        name = "Head",
      },
    },
  },
  points = {
    {
      point = { -0.074956921309592, 0, -0.031668,},
      name = "right_heel",
      body = "Foot_r",
    },
    {
      point = { 0.2, 0.03, -0.031668,},
      name = "right_toe",
      body = "Foot_r",
    },
    {
      point = { 0.17489948305572, -0.06, -0.031668,},
      name = "right_hallux",
      body = "Foot_r",
    },
    {
      point = { -0.074956921309592, 0, -0.031668,},
      name = "left_heel",
      body = "Foot_l",
    },
    {
      point = { 0.2, -0.03, -0.031668,},
      name = "left_toe",
      body = "Foot_l",
    },
    {
      point = { 0.17489948305572, 0.06, -0.031668,},
      name = "left_hallux",
      body = "Foot_l",
    },
  },
  configuration = {
    axis_right = { 0, -1, 0,},
    axis_front = { 1, 0, 0,},
    axis_up = { 0, 0, 1,},
  },
  gravity = { 0, 0, -9.81,},
}