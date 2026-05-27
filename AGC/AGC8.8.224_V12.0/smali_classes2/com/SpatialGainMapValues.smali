.class public Lcom/SpatialGainMapValues;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSpatialGainMap(I)[[[F
    .locals 18

    move/from16 v0, p0

    const/4 v1, 0x0

    new-array v2, v1, [[[F

    const/16 v3, 0x46

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/16 v12, 0xd

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x4

    const/16 v5, 0x11

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-gt v0, v3, :cond_1

    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_3

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_4

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_5

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_6

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_7

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_8

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_9

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_a

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_b

    const/16 v17, 0xb

    aput-object v3, v0, v17

    new-array v3, v5, [F

    fill-array-data v3, :array_c

    const/16 v16, 0xc

    aput-object v3, v0, v16

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_d

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_e

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_f

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_10

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_11

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_12

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_13

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_14

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_15

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_16

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_17

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_18

    const/16 v17, 0xb

    aput-object v3, v0, v17

    new-array v3, v5, [F

    fill-array-data v3, :array_19

    const/16 v16, 0xc

    aput-object v3, v0, v16

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1a

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1b

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1c

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1d

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1e

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1f

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_20

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_21

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_22

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_23

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_24

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_25

    const/16 v17, 0xb

    aput-object v3, v0, v17

    new-array v3, v5, [F

    fill-array-data v3, :array_26

    const/16 v16, 0xc

    aput-object v3, v0, v16

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_27

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_28

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_29

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_2a

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_2c

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_2d

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_2e

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_2f

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_30

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_31

    aput-object v1, v0, v6

    new-array v1, v5, [F

    fill-array-data v1, :array_32

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_33

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_1
    :goto_0
    const/16 v6, 0x78

    if-gt v0, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-gt v0, v6, :cond_3

    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_34

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_35

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_36

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_37

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_38

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_39

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_3a

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_3b

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_3c

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_3d

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_3e

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_3f

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_40

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_41

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_42

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_43

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_44

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_45

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_46

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_47

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_48

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_49

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_4a

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_4b

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_4c

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_4d

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_4e

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_4f

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_50

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_51

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_52

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_53

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_54

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_55

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_56

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_57

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_58

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_59

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_5a

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_5b

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_5c

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_5d

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_5e

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_5f

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_60

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_61

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_62

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_63

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_64

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_65

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_66

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_67

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_3
    :goto_1
    const/16 v3, 0xdc

    if-gt v0, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    if-gt v0, v3, :cond_5

    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_68

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_69

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_6a

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_6b

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_6c

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_6d

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_6e

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_6f

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_70

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_71

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_72

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_73

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_74

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_75

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_76

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_77

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_78

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_79

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_7a

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_7b

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_7c

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_7d

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_7e

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_7f

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_80

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_81

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_82

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_83

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_84

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_85

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_86

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_87

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_88

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_89

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_8a

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_8b

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_8c

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_8d

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_8e

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_8f

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_90

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_91

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_92

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_93

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_94

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_95

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_97

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_98

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_99

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_9a

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_9b

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_5
    :goto_2
    const/16 v6, 0x1a4

    if-gt v0, v3, :cond_6

    goto/16 :goto_3

    :cond_6
    if-gt v0, v6, :cond_7

    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_9c

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_9d

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_9e

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_9f

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_a0

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_a1

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_a2

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_a3

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_a4

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_a5

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_a6

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_a7

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_a8

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_a9

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_aa

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_ab

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_ac

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_ad

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_ae

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_af

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_b0

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_b1

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_b2

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_b3

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_b4

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_b5

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_b6

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_b7

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_b8

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_b9

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_ba

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_bb

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_bc

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_bd

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_be

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_bf

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_c0

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_c1

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_c2

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_c3

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_c4

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_c5

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_c6

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_c7

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_c8

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_c9

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_ca

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_cb

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_cc

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_cd

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_ce

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_cf

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_7
    :goto_3
    const/16 v3, 0x334

    if-gt v0, v6, :cond_8

    goto :goto_4

    :cond_8
    if-le v0, v3, :cond_13

    :goto_4
    const/16 v6, 0x4c4

    if-gt v0, v3, :cond_9

    goto :goto_5

    :cond_9
    if-le v0, v6, :cond_12

    :goto_5
    const/16 v3, 0x654

    if-gt v0, v6, :cond_a

    goto :goto_6

    :cond_a
    if-le v0, v3, :cond_11

    :goto_6
    if-gt v0, v3, :cond_b

    goto :goto_7

    :cond_b
    const/16 v3, 0x8ac

    if-le v0, v3, :cond_10

    :goto_7
    const/16 v3, 0x898

    if-gt v0, v3, :cond_c

    goto :goto_8

    :cond_c
    const/16 v3, 0xc62

    if-le v0, v3, :cond_f

    :goto_8
    const/16 v3, 0xc62

    if-gt v0, v3, :cond_d

    goto/16 :goto_9

    :cond_d
    const/16 v3, 0x6400

    if-le v0, v3, :cond_e

    goto/16 :goto_9

    :cond_e
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_d0

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_d1

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_d2

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_d3

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_d4

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_d5

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_d6

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_d7

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_d8

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_d9

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_da

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_db

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_dc

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_dd

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_de

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_df

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_e0

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_e1

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_e2

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_e3

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_e4

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_e5

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_e6

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_e7

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_e8

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_e9

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_ea

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_eb

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_ec

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_ed

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_ee

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_ef

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_f0

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_f1

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_f2

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_f3

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_f4

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_f5

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_f6

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_f7

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_f8

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_f9

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_fa

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_fb

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_fc

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_fd

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_fe

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_ff

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_100

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_101

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_102

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_103

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_f
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_104

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_105

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_106

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_107

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_108

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_109

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_10a

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_10b

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_10c

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_10d

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_10e

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_10f

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_110

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_111

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_112

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_113

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_114

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_115

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_116

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_117

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_118

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_119

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_11a

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_11b

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_11c

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_11d

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_11e

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_11f

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_120

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_121

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_122

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_123

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_124

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_125

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_126

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_127

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_128

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_129

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_12a

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_12b

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_12c

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_12d

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_12e

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_12f

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_130

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_131

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_132

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_133

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_134

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_135

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_136

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_137

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_10
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_138

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_139

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_13a

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_13b

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_13c

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_13d

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_13e

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_13f

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_140

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_141

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_142

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_143

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_144

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_145

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_146

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_147

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_148

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_149

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_14a

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_14b

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_14c

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_14d

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_14e

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_14f

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_150

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_151

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_152

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_153

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_154

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_155

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_156

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_157

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_158

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_159

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_15a

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_15b

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_15c

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_15d

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_15e

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_15f

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_160

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_161

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_162

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_163

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_164

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_165

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_166

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_167

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_168

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_169

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_16a

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_16b

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_11
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_16c

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_16d

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_16e

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_16f

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_170

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_171

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_172

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_173

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_174

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_175

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_176

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_177

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_178

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_179

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_17a

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_17b

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_17c

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_17d

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_17e

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_17f

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_180

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_181

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_182

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_183

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_184

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_185

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_186

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_187

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_188

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_189

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_18a

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_18b

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_18c

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_18d

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_18e

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_18f

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_190

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_191

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_192

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_193

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_194

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_195

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_196

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_197

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_198

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_199

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_19a

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_19b

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_19c

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_19d

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_19e

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_19f

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_12
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1a0

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1a1

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1a2

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1a3

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1a4

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1a5

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1a6

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1a7

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1a8

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1a9

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1aa

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1ab

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1ac

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1ad

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1ae

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1af

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1b0

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1b1

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1b2

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1b3

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1b4

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1b5

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1b6

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1b7

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1b8

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1b9

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1ba

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1bb

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1bc

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1bd

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1be

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1bf

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1c0

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1c1

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1c2

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1c3

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1c4

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1c5

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1c6

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1c7

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_1c8

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_1c9

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_1ca

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_1cb

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_1cc

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_1cd

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_1ce

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_1cf

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_1d0

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_1d1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_1d2

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_1d3

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    goto/16 :goto_9

    :cond_13
    new-array v2, v4, [[[F

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1d4

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1d5

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1d6

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1d7

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1d8

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1d9

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1da

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1db

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1dc

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1dd

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1de

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1df

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1e0

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v1

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1e1

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1e2

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1e3

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1e4

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1e5

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1e6

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1e7

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1e8

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1e9

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1ea

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1eb

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1ec

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1ed

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v15

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1ee

    aput-object v3, v0, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1ef

    aput-object v3, v0, v15

    new-array v3, v5, [F

    fill-array-data v3, :array_1f0

    aput-object v3, v0, v14

    new-array v3, v5, [F

    fill-array-data v3, :array_1f1

    aput-object v3, v0, v13

    new-array v3, v5, [F

    fill-array-data v3, :array_1f2

    aput-object v3, v0, v4

    new-array v3, v5, [F

    fill-array-data v3, :array_1f3

    aput-object v3, v0, v11

    new-array v3, v5, [F

    fill-array-data v3, :array_1f4

    aput-object v3, v0, v10

    new-array v3, v5, [F

    fill-array-data v3, :array_1f5

    aput-object v3, v0, v9

    new-array v3, v5, [F

    fill-array-data v3, :array_1f6

    aput-object v3, v0, v8

    new-array v3, v5, [F

    fill-array-data v3, :array_1f7

    aput-object v3, v0, v7

    new-array v3, v5, [F

    fill-array-data v3, :array_1f8

    const/16 v6, 0xa

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1f9

    const/16 v6, 0xb

    aput-object v3, v0, v6

    new-array v3, v5, [F

    fill-array-data v3, :array_1fa

    const/16 v6, 0xc

    aput-object v3, v0, v6

    aput-object v0, v2, v14

    new-array v0, v12, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_1fb

    aput-object v3, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_1fc

    aput-object v1, v0, v15

    new-array v1, v5, [F

    fill-array-data v1, :array_1fd

    aput-object v1, v0, v14

    new-array v1, v5, [F

    fill-array-data v1, :array_1fe

    aput-object v1, v0, v13

    new-array v1, v5, [F

    fill-array-data v1, :array_1ff

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_200

    aput-object v1, v0, v11

    new-array v1, v5, [F

    fill-array-data v1, :array_201

    aput-object v1, v0, v10

    new-array v1, v5, [F

    fill-array-data v1, :array_202

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_203

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_204

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_205

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_206

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-array v1, v5, [F

    fill-array-data v1, :array_207

    const/16 v3, 0xc

    aput-object v1, v0, v3

    aput-object v0, v2, v13

    :goto_9
    return-object v2

    :array_0
    .array-data 4
        0x407fb000
        0x4038a000
        0x40192000
        0x400a7000
        0x3ffda000
        0x3feca000
        0x3fe06000
        0x3fd8a000
        0x3fd68000
        0x3fd94000
        0x3fe0e000
        0x3fec8000    # 1.8476562f
        0x3ffca000
        0x400a5000
        0x401aa000
        0x403c5000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_1
    .array-data 4
        0x40453000
        0x401e3000
        0x400c0000    # 2.1875f
        0x3ffd0000    # 1.9765625f
        0x3fe7c000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbba000
        0x3fbea000
        0x3fc74000
        0x3fd58000    # 1.6679688f
        0x3fe76000
        0x3ffc8000    # 1.9726562f
        0x400c7000
        0x40202000
        0x4049a000
    .end array-data

    :array_2
    .array-data 4
        0x4026b000
        0x40113000
        0x4000d000
        0x3fe80000    # 1.8125f
        0x3fd08000    # 1.6289062f
        0x3fbc4000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf8000    # 1.3710938f
        0x3fbca000
        0x3fd08000    # 1.6289062f
        0x3fe72000
        0x40000000    # 2.0f
        0x4011b000
        0x4029e000
    .end array-data

    :array_3
    .array-data 4
        0x40182000
        0x40075000
        0x3ff0c000
        0x3fd5c000
        0x3fbc6000
        0x3fabe000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab8000    # 1.3398438f
        0x3fbbe000
        0x3fd4c000
        0x3fef6000
        0x40077000
        0x401bc000    # 2.4335938f
    .end array-data

    :array_4
    .array-data 4
        0x40116000
        0x40004000    # 2.0039062f
        0x3fe32000
        0x3fc62000
        0x3faf4000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5c000
        0x3fe1e000
        0x40003000
        0x40127000
    .end array-data

    :array_5
    .array-data 4
        0x400d9000
        0x3ff90000    # 1.9453125f
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7c000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbba000
        0x3fda2000
        0x3ff8a000
        0x400df000
    .end array-data

    :array_6
    .array-data 4
        0x400c4000
        0x3ff78000    # 1.9335938f
        0x3fd7c000
        0x3fb92000
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa4a000
        0x3fb8c000
        0x3fd6e000
        0x3ff4c000
        0x400cd000
    .end array-data

    :array_7
    .array-data 4
        0x400cd000
        0x3ffa0000    # 1.953125f
        0x3fda8000    # 1.7070312f
        0x3fbc2000
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f84a000
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbe000
        0x3fd9c000
        0x3ff7c000
        0x400e1000
    .end array-data

    :array_8
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000d000
        0x3fe26000
        0x3fc4c000
        0x3fae0000    # 1.359375f
        0x3f9f4000
        0x3f934000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fc000
        0x3fad0000    # 1.3515625f
        0x3fc46000
        0x3fe26000
        0x3fff8000    # 1.9960938f
        0x40126000
    .end array-data

    :array_9
    .array-data 4
        0x40191000
        0x40078000    # 2.1171875f
        0x3ff0c000
        0x3fd3c000
        0x3fba4000
        0x3faa0000    # 1.328125f
        0x3fa00000    # 1.25f
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa2000
        0x3fb98000    # 1.4492188f
        0x3fd34000
        0x3fee6000
        0x40065000
        0x401a4000    # 2.4101562f
    .end array-data

    :array_a
    .array-data 4
        0x4023b000
        0x4010f000
        0x40008000    # 2.0078125f
        0x3fe74000
        0x3fcee000
        0x3fbae000
        0x3fada000
        0x3fa70000    # 1.3046875f
        0x3fa4e000
        0x3fa74000
        0x3fade000
        0x3fba4000
        0x3fce0000    # 1.609375f
        0x3fe62000
        0x3fffa000
        0x4010f000
        0x40277000
    .end array-data

    :array_b
    .array-data 4
        0x40385000
        0x401c0000    # 2.4375f
        0x400b7000
        0x3ffda000
        0x3fe7a000
        0x3fd36000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba8000    # 1.4570312f
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5c000
        0x3ffb8000    # 1.9648438f
        0x400bd000
        0x401f0000    # 2.484375f
        0x40430000    # 3.046875f
    .end array-data

    :array_c
    .array-data 4
        0x4063f000
        0x402fe000
        0x4018f000
        0x4009d000
        0x3ffda000
        0x3fec2000
        0x3fde4000
        0x3fd58000    # 1.6679688f
        0x3fd2c000
        0x3fd58000    # 1.6679688f
        0x3fde0000    # 1.734375f
        0x3feb4000
        0x3ffbe000
        0x40095000
        0x40193000
        0x4034a000
        0x4072c000
    .end array-data

    :array_d
    .array-data 4
        0x407ea000
        0x403b5000
        0x401d6000
        0x400f4000    # 2.2382812f
        0x4003e000
        0x3ff50000    # 1.9140625f
        0x3fe8a000
        0x3fe06000
        0x3fddc000
        0x3fe0c000
        0x3fe90000    # 1.8203125f
        0x3ff54000
        0x40032000
        0x400ee000
        0x401e5000
        0x403ec000    # 2.9804688f
        0x4083b800
    .end array-data

    :array_e
    .array-data 4
        0x4046c000    # 3.1054688f
        0x4021d000
        0x4010d000
        0x40032000
        0x3ff00000    # 1.875f
        0x3fdca000
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc48000    # 1.5351562f
        0x3fcde000
        0x3fdce000
        0x3fef8000
        0x40027000
        0x40105000
        0x40230000    # 2.546875f
        0x404b3000
    .end array-data

    :array_f
    .array-data 4
        0x40295000
        0x40155000
        0x40055000
        0x3fefe000
        0x3fd72000
        0x3fc24000
        0x3fb42000
        0x3face000
        0x3fab6000
        0x3fadc000
        0x3fb4a000
        0x3fc28000
        0x3fd74000
        0x3fee8000    # 1.8632812f
        0x4003e000
        0x40151000
        0x402c5000
    .end array-data

    :array_10
    .array-data 4
        0x401b9000
        0x400bc000    # 2.1835938f
        0x3ff8c000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc10000    # 1.5078125f
        0x3fdba000
        0x3ff68000    # 1.9257812f
        0x400ab000
        0x401e8000    # 2.4765625f
    .end array-data

    :array_11
    .array-data 4
        0x4014c000    # 2.3242188f
        0x40044000    # 2.0664062f
        0x3fea0000    # 1.828125f
        0x3fcc0000    # 1.59375f
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e6000
        0x3f972000
        0x3fa3a000
        0x3fb30000    # 1.3984375f
        0x3fcb8000    # 1.5898438f
        0x3fe8a000
        0x40039000
        0x4015d000
    .end array-data

    :array_12
    .array-data 4
        0x40107000
        0x40000000    # 2.0f
        0x3fe08000
        0x3fc14000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f860000    # 1.046875f
        0x3f8d8000    # 1.1054688f
        0x3f9b6000
        0x3fab2000
        0x3fc0a000
        0x3fe04000
        0x3ffee000
        0x40111000
    .end array-data

    :array_13
    .array-data 4
        0x400ee000
        0x3ffd6000
        0x3fdd4000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdd0000    # 1.7265625f
        0x3ffb4000
        0x40101000
    .end array-data

    :array_14
    .array-data 4
        0x400f5000
        0x3fffc000
        0x3fe02000
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe8000
        0x40116000
    .end array-data

    :array_15
    .array-data 4
        0x4013b000
        0x40045000
        0x3fe8a000
        0x3fc98000    # 1.5742188f
        0x3fb1e000
        0x3fa24000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb12000
        0x3fc98000    # 1.5742188f
        0x3fe8e000
        0x40033000
        0x40164000
    .end array-data

    :array_16
    .array-data 4
        0x401c2000
        0x400b5000
        0x3ff72000
        0x3fd94000
        0x3fbe8000    # 1.4882812f
        0x3fae2000
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe4000
        0x3fd94000
        0x3ff56000
        0x4009f000
        0x401e3000
    .end array-data

    :array_17
    .array-data 4
        0x40267000
        0x4014d000
        0x40044000    # 2.0664062f
        0x3fee4000
        0x3fd52000
        0x3fbfe000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb24000
        0x3fbf6000
        0x3fd40000    # 1.65625f
        0x3fed0000    # 1.8515625f
        0x4003a000
        0x40150000    # 2.328125f
        0x402af000
    .end array-data

    :array_18
    .array-data 4
        0x4039a000
        0x401f9000
        0x40103000
        0x40032000
        0x3fef2000
        0x3fd96000
        0x3fc96000
        0x3fbf8000    # 1.4960938f
        0x3fbc2000
        0x3fbf2000
        0x3fc94000
        0x3fd96000
        0x3fed4000
        0x40021000
        0x40107000
        0x4022c000
        0x40464000    # 3.0976562f
    .end array-data

    :array_19
    .array-data 4
        0x40631000
        0x40333000
        0x401de000
        0x400f1000
        0x40036000
        0x3ff42000
        0x3fe58000
        0x3fdbe000
        0x3fd8a000
        0x3fdc4000
        0x3fe5a000
        0x3ff3e000
        0x4002e000
        0x400ed000
        0x401e1000
        0x4038a000
        0x4075d000
    .end array-data

    :array_1a
    .array-data 4
        0x407fb000
        0x403b9000
        0x401d1000
        0x400eb000
        0x4002e000
        0x3ff34000
        0x3fe6a000
        0x3fdea000
        0x3fdbe000
        0x3fdf2000
        0x3fe76000
        0x3ff3e000
        0x40027000
        0x400e8000    # 2.2265625f
        0x401e3000
        0x403eb000
        0x4083d800
    .end array-data

    :array_1b
    .array-data 4
        0x40479000
        0x4021c000    # 2.5273438f
        0x40109000
        0x4002b000
        0x3feea000
        0x3fdb8000
        0x3fcca000
        0x3fc30000    # 1.5234375f
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fccc000
        0x3fdba000
        0x3feea000
        0x40021000
        0x40103000
        0x40231000
        0x404b3000
    .end array-data

    :array_1c
    .array-data 4
        0x402a1000
        0x4015c000    # 2.3398438f
        0x40059000
        0x3fefe000
        0x3fd6e000
        0x3fc16000
        0x3fb36000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc20000    # 1.515625f
        0x3fd70000    # 1.6796875f
        0x3feea000
        0x40040000    # 2.0625f
        0x40159000
        0x402cd000
    .end array-data

    :array_1d
    .array-data 4
        0x401ca000
        0x400c8000    # 2.1953125f
        0x3ff9c000
        0x3fdce000
        0x3fc22000
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f99a000
        0x3f9d4000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc2000
        0x3ff6e000
        0x400b3000
        0x401f7000
    .end array-data

    :array_1e
    .array-data 4
        0x4015d000
        0x40051000
        0x3feb2000
        0x3fcc6000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe98000    # 1.8242188f
        0x40043000
        0x4016b000
    .end array-data

    :array_1f
    .array-data 4
        0x4011d000
        0x40011000
        0x3fe20000    # 1.765625f
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f85a000
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc12000
        0x3fe12000
        0x40002000
        0x40123000
    .end array-data

    :array_20
    .array-data 4
        0x40101000
        0x3fff4000
        0x3fde8000    # 1.7382812f
        0x3fbe4000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a6000
        0x3f97c000
        0x3fa88000    # 1.3164062f
        0x3fbdc000
        0x3fdda000
        0x3ffcc000
        0x40113000
    .end array-data

    :array_21
    .array-data 4
        0x4010e000
        0x4000f000
        0x3fe1c000
        0x3fc16000
        0x3fab8000    # 1.3398438f
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0c000
        0x40001000    # 2.0009766f
        0x40127000
    .end array-data

    :array_22
    .array-data 4
        0x40155000
        0x40057000
        0x3fea6000
        0x3fcac000
        0x3fb28000    # 1.3945312f
        0x3fa2a000
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca2000
        0x3fe9e000
        0x40040000    # 2.0625f
        0x40172000
    .end array-data

    :array_23
    .array-data 4
        0x401da000
        0x400c9000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbf4000
        0x3fae8000
        0x3fa32000
        0x3f9aa000
        0x3f97a000
        0x3f9ac000
        0x3fa32000
        0x3fae4000
        0x3fbe6000
        0x3fd9c000
        0x3ff62000
        0x400a9000
        0x401f0000    # 2.484375f
    .end array-data

    :array_24
    .array-data 4
        0x40282000
        0x4015f000
        0x40051000
        0x3fefa000
        0x3fd58000    # 1.6679688f
        0x3fc02000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab2000
        0x3fb1e000
        0x3fbf4000
        0x3fd40000    # 1.65625f
        0x3fed6000
        0x40041000
        0x40156000
        0x402b8000    # 2.6796875f
    .end array-data

    :array_25
    .array-data 4
        0x403af000
        0x4020b000
        0x4010c000    # 2.2617188f
        0x4003a000
        0x3fef6000
        0x3fd98000    # 1.6992188f
        0x3fc92000
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd90000    # 1.6953125f
        0x3fece000
        0x40021000
        0x40107000
        0x40231000
        0x40463000
    .end array-data

    :array_26
    .array-data 4
        0x40647000
        0x4033d000
        0x401e4000    # 2.4726562f
        0x400f4000    # 2.2382812f
        0x40036000
        0x3ff38000    # 1.9023438f
        0x3fe4c000
        0x3fdb4000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2e000
        0x40027000
        0x400e7000
        0x401e2000
        0x4038a000
        0x40760000    # 3.84375f
    .end array-data

    :array_27
    .array-data 4
        0x406bd000
        0x402db000
        0x40135000
        0x40076000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe04000
        0x3fd8e000
        0x3fd70000    # 1.6796875f
        0x3fd9e000
        0x3fe14000
        0x3fecc000
        0x3ffba000
        0x40081000
        0x40153000
        0x40322000
        0x4074b000
    .end array-data

    :array_28
    .array-data 4
        0x4039c000    # 2.9023438f
        0x40183000
        0x40097000
        0x3ffb2000
        0x3fe68000    # 1.8007812f
        0x3fd54000
        0x3fc80000    # 1.5625f
        0x3fbf4000
        0x3fbca000
        0x3fbfc000
        0x3fc88000    # 1.5664062f
        0x3fd68000
        0x3fe82000
        0x3ffc2000
        0x400a2000
        0x401ac000    # 2.4179688f
        0x403ed000
    .end array-data

    :array_29
    .array-data 4
        0x401fa000
        0x400e4000    # 2.2226562f
        0x40000000    # 2.0f
        0x3fe76000
        0x3fd06000
        0x3fbca000
        0x3fafe000
        0x3fa98000
        0x3fa88000    # 1.3164062f
        0x3faac000
        0x3fb10000    # 1.3828125f
        0x3fbe0000    # 1.484375f
        0x3fd1e000
        0x3fe84000
        0x40001000    # 2.0009766f
        0x400f8000    # 2.2421875f
        0x40239000
    .end array-data

    :array_2a
    .array-data 4
        0x40143000
        0x4006e000
        0x3ff18000    # 1.8867188f
        0x3fd62000
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa30000    # 1.2734375f
        0x3fad8000    # 1.3554688f
        0x3fbda000
        0x3fd74000
        0x3ff16000
        0x4006a000
        0x4018b000
    .end array-data

    :array_2b
    .array-data 4
        0x400fc000    # 2.2460938f
        0x4000f000
        0x3fe4a000
        0x3fc76000
        0x3fb08000    # 1.3789062f
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe58000
        0x40011000
        0x40125000
    .end array-data

    :array_2c
    .array-data 4
        0x400ca000
        0x3ffb2000
        0x3fdc8000    # 1.7226562f
        0x3fbe0000    # 1.484375f
        0x3fa94000
        0x3f99c000
        0x3f8c2000
        0x3f84c000
        0x3f828000    # 1.0195312f
        0x3f854000
        0x3f8ca000
        0x3f9a8000
        0x3fa9c000
        0x3fbec000
        0x3fdde000
        0x3ffc6000
        0x400e9000
    .end array-data

    :array_2d
    .array-data 4
        0x400b3000
        0x3ff88000    # 1.9414062f
        0x3fd96000
        0x3fbae000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa7a000
        0x3fbbc000
        0x3fdac000
        0x3ff8a000
        0x400d7000
    .end array-data

    :array_2e
    .array-data 4
        0x400b9000
        0x3ffb0000    # 1.9609375f
        0x3fdc2000
        0x3fbd8000
        0x3fa8a000
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdda000
        0x3ffba000
        0x400eb000
    .end array-data

    :array_2f
    .array-data 4
        0x400f6000
        0x40015000
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faee000
        0x3f9fc000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3fafa000
        0x3fc76000
        0x3fe66000
        0x40018000    # 2.0234375f
        0x4012f000
    .end array-data

    :array_30
    .array-data 4
        0x4015a000
        0x40073000
        0x3ff14000
        0x3fd40000    # 1.65625f
        0x3fbac000
        0x3fab0000    # 1.3359375f
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd60000    # 1.671875f
        0x3ff1a000
        0x40071000
        0x40194000    # 2.3945312f
    .end array-data

    :array_31
    .array-data 4
        0x401e1000
        0x400ef000
        0x3fffc000
        0x3fe80000    # 1.8125f
        0x3fcfe000
        0x3fbba000
        0x3faee000
        0x3fa8a000
        0x3fa6c000
        0x3fa96000
        0x3fafc000
        0x3fbc4000
        0x3fd02000
        0x3fe86000
        0x4000b000
        0x40102000
        0x40234000    # 2.5507812f
    .end array-data

    :array_32
    .array-data 4
        0x402e4000    # 2.7226562f
        0x40179000
        0x400a0000    # 2.15625f
        0x3ffd2000
        0x3fe86000
        0x3fd44000
        0x3fc5a000
        0x3fbca000
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc5a000
        0x3fd4e000
        0x3fe7a000
        0x3ffce000
        0x400b5000
        0x401b9000
        0x403b0000    # 2.921875f
    .end array-data

    :array_33
    .array-data 4
        0x4052e000
        0x4027a000
        0x40155000
        0x4008d000
        0x3ffe0000    # 1.984375f
        0x3feda000
        0x3fe06000
        0x3fd7e000
        0x3fd4c000
        0x3fd82000
        0x3fe0e000
        0x3fede000
        0x3ffe0000    # 1.984375f
        0x40095000
        0x4016d000
        0x402e2000
        0x40666000
    .end array-data

    :array_34
    .array-data 4
        0x407f8000    # 3.9921875f
        0x40388000    # 2.8828125f
        0x40190000    # 2.390625f
        0x400a6000
        0x3ffd8000    # 1.9804688f
        0x3fec8000    # 1.8476562f
        0x3fe04000
        0x3fd88000    # 1.6914062f
        0x3fd66000
        0x3fd92000
        0x3fe0c000
        0x3fec6000
        0x3ffc8000    # 1.9726562f
        0x400a4000    # 2.1601562f
        0x401a9000
        0x403c3000
        0x4083a800
    .end array-data

    :array_35
    .array-data 4
        0x40451000
        0x401e2000
        0x400bf000
        0x3ffce000
        0x3fe7a000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbb8000    # 1.4648438f
        0x3fbe8000    # 1.4882812f
        0x3fc74000
        0x3fd56000
        0x3fe74000
        0x3ffc6000
        0x400c6000
        0x40200000    # 2.5f
        0x40498000    # 3.1484375f
    .end array-data

    :array_36
    .array-data 4
        0x40269000
        0x40112000
        0x4000c000    # 2.0117188f
        0x3fe7e000
        0x3fd06000
        0x3fbc2000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf6000
        0x3fbc8000    # 1.4726562f
        0x3fd06000
        0x3fe70000    # 1.8046875f
        0x3fffe000    # 1.9990234f
        0x40119000
        0x4029c000    # 2.6523438f
    .end array-data

    :array_37
    .array-data 4
        0x40180000    # 2.375f
        0x40074000
        0x3ff0a000
        0x3fd5a000
        0x3fbc6000
        0x3fabc000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab6000
        0x3fbbe000
        0x3fd4c000
        0x3fef4000
        0x40075000
        0x401ba000
    .end array-data

    :array_38
    .array-data 4
        0x40114000
        0x40002000
        0x3fe30000    # 1.7734375f
        0x3fc62000
        0x3faf2000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5a000
        0x3fe1e000
        0x40001000    # 2.0009766f
        0x40126000
    .end array-data

    :array_39
    .array-data 4
        0x400d7000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7a000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbb8000    # 1.4648438f
        0x3fda0000    # 1.703125f
        0x3ff88000    # 1.9414062f
        0x400de000
    .end array-data

    :array_3a
    .array-data 4
        0x400c3000
        0x3ff76000
        0x3fd7a000
        0x3fb90000    # 1.4453125f
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa48000
        0x3fb8a000
        0x3fd6e000
        0x3ff4a000
        0x400cc000    # 2.1992188f
    .end array-data

    :array_3b
    .array-data 4
        0x400cc000    # 2.1992188f
        0x3ff9e000
        0x3fda6000
        0x3fbc0000    # 1.46875f
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f848000    # 1.0351562f
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbc000
        0x3fd9a000
        0x3ff7a000
        0x400df000
    .end array-data

    :array_3c
    .array-data 4
        0x4010b000
        0x4000b000
        0x3fe26000
        0x3fc4c000
        0x3fade000
        0x3f9f4000
        0x3f932000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fa000
        0x3face000
        0x3fc46000
        0x3fe24000
        0x3fff6000
        0x40124000    # 2.2851562f
    .end array-data

    :array_3d
    .array-data 4
        0x4018f000
        0x40077000
        0x3ff0a000
        0x3fd3c000
        0x3fba4000
        0x3fa9e000
        0x3f9fe000
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa0000    # 1.328125f
        0x3fb98000    # 1.4492188f
        0x3fd32000
        0x3fee4000
        0x40064000    # 2.0976562f
        0x401a2000
    .end array-data

    :array_3e
    .array-data 4
        0x40239000
        0x4010d000
        0x40006000
        0x3fe72000
        0x3fcec000
        0x3fbae000
        0x3fada000
        0x3fa6e000
        0x3fa4c000
        0x3fa74000
        0x3fade000
        0x3fba2000
        0x3fce0000    # 1.609375f
        0x3fe60000    # 1.796875f
        0x3fff8000    # 1.9960938f
        0x4010e000
        0x40275000
    .end array-data

    :array_3f
    .array-data 4
        0x40383000
        0x401be000
        0x400b5000
        0x3ffd8000    # 1.9804688f
        0x3fe7a000
        0x3fd34000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba6000
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5a000
        0x3ffb6000
        0x400bc000    # 2.1835938f
        0x401ef000
        0x4042e000
    .end array-data

    :array_40
    .array-data 4
        0x4063c000
        0x402fc000    # 2.7460938f
        0x4018e000
        0x4009c000
        0x3ffd8000    # 1.9804688f
        0x3fec0000    # 1.84375f
        0x3fde4000
        0x3fd56000
        0x3fd2a000
        0x3fd56000
        0x3fdde000
        0x3feb2000
        0x3ffbc000
        0x40094000    # 2.1445312f
        0x40192000
        0x40348000    # 2.8203125f
        0x40729000
    .end array-data

    :array_41
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_42
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_43
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_44
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_45
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_46
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_47
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_48
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_49
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_4a
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_4b
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_4c
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_4d
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_4e
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_4f
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_50
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_51
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_52
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_53
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_54
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_55
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_56
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_57
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_58
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_59
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_5a
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_5b
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_5c
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_5d
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_5e
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_5f
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_60
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_61
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_62
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_63
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_64
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_65
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_66
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_67
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_68
    .array-data 4
        0x407f8000    # 3.9921875f
        0x40388000    # 2.8828125f
        0x40190000    # 2.390625f
        0x400a6000
        0x3ffd8000    # 1.9804688f
        0x3fec8000    # 1.8476562f
        0x3fe04000
        0x3fd88000    # 1.6914062f
        0x3fd66000
        0x3fd92000
        0x3fe0c000
        0x3fec6000
        0x3ffc8000    # 1.9726562f
        0x400a4000    # 2.1601562f
        0x401a9000
        0x403c3000
        0x4083a800
    .end array-data

    :array_69
    .array-data 4
        0x40451000
        0x401e2000
        0x400bf000
        0x3ffce000
        0x3fe7a000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbb8000    # 1.4648438f
        0x3fbe8000    # 1.4882812f
        0x3fc74000
        0x3fd56000
        0x3fe74000
        0x3ffc6000
        0x400c6000
        0x40200000    # 2.5f
        0x40498000    # 3.1484375f
    .end array-data

    :array_6a
    .array-data 4
        0x40269000
        0x40112000
        0x4000c000    # 2.0117188f
        0x3fe7e000
        0x3fd06000
        0x3fbc2000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf6000
        0x3fbc8000    # 1.4726562f
        0x3fd06000
        0x3fe70000    # 1.8046875f
        0x3fffe000    # 1.9990234f
        0x40119000
        0x4029c000    # 2.6523438f
    .end array-data

    :array_6b
    .array-data 4
        0x40180000    # 2.375f
        0x40074000
        0x3ff0a000
        0x3fd5a000
        0x3fbc6000
        0x3fabc000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab6000
        0x3fbbe000
        0x3fd4c000
        0x3fef4000
        0x40075000
        0x401ba000
    .end array-data

    :array_6c
    .array-data 4
        0x40114000
        0x40002000
        0x3fe30000    # 1.7734375f
        0x3fc62000
        0x3faf2000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5a000
        0x3fe1e000
        0x40001000    # 2.0009766f
        0x40126000
    .end array-data

    :array_6d
    .array-data 4
        0x400d7000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7a000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbb8000    # 1.4648438f
        0x3fda0000    # 1.703125f
        0x3ff88000    # 1.9414062f
        0x400de000
    .end array-data

    :array_6e
    .array-data 4
        0x400c3000
        0x3ff76000
        0x3fd7a000
        0x3fb90000    # 1.4453125f
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa48000
        0x3fb8a000
        0x3fd6e000
        0x3ff4a000
        0x400cc000    # 2.1992188f
    .end array-data

    :array_6f
    .array-data 4
        0x400cc000    # 2.1992188f
        0x3ff9e000
        0x3fda6000
        0x3fbc0000    # 1.46875f
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f848000    # 1.0351562f
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbc000
        0x3fd9a000
        0x3ff7a000
        0x400df000
    .end array-data

    :array_70
    .array-data 4
        0x4010b000
        0x4000b000
        0x3fe26000
        0x3fc4c000
        0x3fade000
        0x3f9f4000
        0x3f932000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fa000
        0x3face000
        0x3fc46000
        0x3fe24000
        0x3fff6000
        0x40124000    # 2.2851562f
    .end array-data

    :array_71
    .array-data 4
        0x4018f000
        0x40077000
        0x3ff0a000
        0x3fd3c000
        0x3fba4000
        0x3fa9e000
        0x3f9fe000
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa0000    # 1.328125f
        0x3fb98000    # 1.4492188f
        0x3fd32000
        0x3fee4000
        0x40064000    # 2.0976562f
        0x401a2000
    .end array-data

    :array_72
    .array-data 4
        0x40239000
        0x4010d000
        0x40006000
        0x3fe72000
        0x3fcec000
        0x3fbae000
        0x3fada000
        0x3fa6e000
        0x3fa4c000
        0x3fa74000
        0x3fade000
        0x3fba2000
        0x3fce0000    # 1.609375f
        0x3fe60000    # 1.796875f
        0x3fff8000    # 1.9960938f
        0x4010e000
        0x40275000
    .end array-data

    :array_73
    .array-data 4
        0x40383000
        0x401be000
        0x400b5000
        0x3ffd8000    # 1.9804688f
        0x3fe7a000
        0x3fd34000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba6000
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5a000
        0x3ffb6000
        0x400bc000    # 2.1835938f
        0x401ef000
        0x4042e000
    .end array-data

    :array_74
    .array-data 4
        0x4063c000
        0x402fc000    # 2.7460938f
        0x4018e000
        0x4009c000
        0x3ffd8000    # 1.9804688f
        0x3fec0000    # 1.84375f
        0x3fde4000
        0x3fd56000
        0x3fd2a000
        0x3fd56000
        0x3fdde000
        0x3feb2000
        0x3ffbc000
        0x40094000    # 2.1445312f
        0x40192000
        0x40348000    # 2.8203125f
        0x40729000
    .end array-data

    :array_75
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_76
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_77
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_78
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_79
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_7a
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_7b
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_7c
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_7d
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_7e
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_7f
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_80
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_81
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_82
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_83
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_84
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_85
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_86
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_87
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_88
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_89
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_8a
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_8b
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_8c
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_8d
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_8e
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_8f
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_90
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_91
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_92
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_93
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_94
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_95
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_96
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_97
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_98
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_99
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_9a
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_9b
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_9c
    .array-data 4
        0x40818000    # 4.046875f
        0x403ad000
        0x401ac000    # 2.4179688f
        0x400bd000
        0x40000000    # 2.0f
        0x3fee8000    # 1.8632812f
        0x3fe22000
        0x3fda2000
        0x3fd80000    # 1.6875f
        0x3fdac000
        0x3fe28000    # 1.7695312f
        0x3fee6000
        0x3ffee000
        0x400bb000
        0x401c4000    # 2.4414062f
        0x403e8000    # 2.9765625f
        0x40857000
    .end array-data

    :array_9d
    .array-data 4
        0x4047a000
        0x401ff000
        0x400d6000
        0x3fff4000
        0x3fe9a000
        0x3fd70000    # 1.6796875f
        0x3fc8c000
        0x3fbf6000
        0x3fbca000
        0x3fbfa000
        0x3fc88000    # 1.5664062f
        0x3fd70000    # 1.6796875f
        0x3fe94000
        0x3ffec000
        0x400dd000
        0x4021d000
        0x404c0000    # 3.1875f
    .end array-data

    :array_9e
    .array-data 4
        0x40289000
        0x4012b000
        0x40020000    # 2.03125f
        0x3fe9e000
        0x3fd1e000
        0x3fbd4000
        0x3fb00000    # 1.375f
        0x3fa90000    # 1.3203125f
        0x3fa7a000
        0x3fa9c000
        0x3fb06000
        0x3fbdc000
        0x3fd1e000
        0x3fe8e000
        0x40013000
        0x40132000
        0x402bc000    # 2.6835938f
    .end array-data

    :array_9f
    .array-data 4
        0x4019c000    # 2.4023438f
        0x4008a000
        0x3ff2c000
        0x3fd74000
        0x3fbd8000
        0x3faca000
        0x3fa18000    # 1.2617188f
        0x3f99e000
        0x3f970000    # 1.1796875f
        0x3f9a8000
        0x3fa22000
        0x3fac4000
        0x3fbd0000    # 1.4765625f
        0x3fd64000
        0x3ff16000
        0x4008b000
        0x401d6000
    .end array-data

    :array_a0
    .array-data 4
        0x4012e000
        0x40016000
        0x3fe4e000
        0x3fc76000
        0x3fb02000
        0x3fa18000    # 1.2617188f
        0x3f952000
        0x3f8c8000    # 1.0976562f
        0x3f89c000
        0x3f8cc000
        0x3f94e000
        0x3fa0a000
        0x3faf0000    # 1.3671875f
        0x3fc70000    # 1.5546875f
        0x3fe3a000
        0x40015000
        0x4013f000
    .end array-data

    :array_a1
    .array-data 4
        0x400ef000
        0x3ffb2000
        0x3fdc2000
        0x3fbd6000
        0x3fa86000
        0x3f992000
        0x3f8c6000
        0x3f850000    # 1.0390625f
        0x3f82a000
        0x3f852000
        0x3f8c2000
        0x3f98c000
        0x3fa7c000
        0x3fbcc000
        0x3fdba000
        0x3ffac000
        0x400f6000
    .end array-data

    :array_a2
    .array-data 4
        0x400db000
        0x3ff9c000
        0x3fd96000
        0x3fba2000
        0x3fa5c000
        0x3f95a000
        0x3f88e000
        0x3f81c000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f892000
        0x3f958000
        0x3fa54000
        0x3fb9c000
        0x3fd88000    # 1.6914062f
        0x3ff6e000
        0x400e3000
    .end array-data

    :array_a3
    .array-data 4
        0x400e4000    # 2.2226562f
        0x3ffc4000
        0x3fdc2000
        0x3fbd2000
        0x3fa80000    # 1.3125f
        0x3f986000
        0x3f8b6000
        0x3f844000
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8b6000
        0x3f982000
        0x3fa7a000
        0x3fbce000
        0x3fdb6000
        0x3ff9e000
        0x400f7000
    .end array-data

    :array_a4
    .array-data 4
        0x40124000    # 2.2851562f
        0x4001f000
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faee000
        0x3f9fe000
        0x3f93a000
        0x3f8ba000
        0x3f892000
        0x3f8ba000
        0x3f93a000
        0x3fa04000
        0x3fadc000
        0x3fc5a000
        0x3fe40000    # 1.78125f
        0x4000f000
        0x4013d000
    .end array-data

    :array_a5
    .array-data 4
        0x401ab000
        0x4008d000
        0x3ff2c000
        0x3fd54000
        0x3fbb6000
        0x3faac000
        0x3fa08000    # 1.2539062f
        0x3f984000
        0x3f956000
        0x3f988000    # 1.1914062f
        0x3fa06000
        0x3faae000
        0x3fbaa000
        0x3fd4c000
        0x3ff06000
        0x40079000
        0x401bd000
    .end array-data

    :array_a6
    .array-data 4
        0x40259000
        0x40127000
        0x4001a000
        0x3fe90000    # 1.8203125f
        0x3fd04000
        0x3fbc0000    # 1.46875f
        0x3fae8000
        0x3fa7a000
        0x3fa58000    # 1.2929688f
        0x3fa80000    # 1.3125f
        0x3faec000
        0x3fbb4000
        0x3fcf6000
        0x3fe7e000
        0x4000f000
        0x40126000
        0x40294000    # 2.6445312f
    .end array-data

    :array_a7
    .array-data 4
        0x403a9000
        0x401db000
        0x400cd000
        0x3fffe000    # 1.9990234f
        0x3fe98000    # 1.8242188f
        0x3fd4e000
        0x3fc50000
        0x3fbc0000    # 1.46875f
        0x3fb90000    # 1.4453125f
        0x3fbb8000    # 1.4648438f
        0x3fc4c000
        0x3fd44000
        0x3fe78000    # 1.8085938f
        0x3ffdc000
        0x400d3000
        0x4020c000    # 2.5117188f
        0x40455000
    .end array-data

    :array_a8
    .array-data 4
        0x4066f000
        0x4031f000
        0x401a9000
        0x400b3000
        0x3fffe000    # 1.9990234f
        0x3fee0000    # 1.859375f
        0x3fe00000    # 1.75f
        0x3fd70000    # 1.6796875f
        0x3fd42000
        0x3fd70000    # 1.6796875f
        0x3fdfa000
        0x3fed2000
        0x3ffe2000
        0x400aa000
        0x401ad000
        0x4036b000
        0x4075d000
    .end array-data

    :array_a9
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_aa
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_ab
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_ac
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_ad
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_ae
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_af
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_b0
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_b1
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_b2
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_b3
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_b4
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_b5
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_b6
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_b7
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_b8
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_b9
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_ba
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_bb
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_bc
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_bd
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_be
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_bf
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_c0
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_c1
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_c2
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_c3
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_c4
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_c5
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_c6
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_c7
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_c8
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_c9
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_ca
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_cb
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_cc
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_cd
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_ce
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_cf
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_d0
    .array-data 4
        0x3fe52000
        0x3fb74000
        0x3fa64000
        0x3fa14000
        0x3f9ca000
        0x3f994000
        0x3f972000
        0x3f958000
        0x3f95a000
        0x3f968000    # 1.1757812f
        0x3f982000
        0x3f9a0000    # 1.203125f
        0x3f9d0000    # 1.2265625f
        0x3fa28000    # 1.2695312f
        0x3faa0000    # 1.328125f
        0x3fbec000
        0x3fef6000
    .end array-data

    :array_d1
    .array-data 4
        0x3fbe0000    # 1.484375f
        0x3fa88000    # 1.3164062f
        0x3fa20000    # 1.265625f
        0x3f9cc000
        0x3f98e000
        0x3f94a000
        0x3f912000
        0x3f8ea000
        0x3f8e2000
        0x3f8f0000    # 1.1171875f
        0x3f91a000
        0x3f958000
        0x3f998000    # 1.1992188f
        0x3f9de000
        0x3fa42000
        0x3facc000
        0x3fc88000    # 1.5664062f
    .end array-data

    :array_d2
    .array-data 4
        0x3fac2000
        0x3fa40000    # 1.28125f
        0x3f9da000
        0x3f98e000
        0x3f938000    # 1.1523438f
        0x3f8da000
        0x3f8a0000    # 1.078125f
        0x3f88c000
        0x3f896000
        0x3f89c000
        0x3f8aa000
        0x3f8e6000
        0x3f944000
        0x3f996000
        0x3f9e2000
        0x3fa68000    # 1.3007812f
        0x3fb3a000
    .end array-data

    :array_d3
    .array-data 4
        0x3fa4c000
        0x3fa00000    # 1.25f
        0x3f9a6000
        0x3f94c000
        0x3f8dc000
        0x3f8a0000    # 1.078125f
        0x3f87e000
        0x3f862000
        0x3f85a000
        0x3f872000
        0x3f88e000
        0x3f89e000
        0x3f8e0000    # 1.109375f
        0x3f952000
        0x3f9ae000
        0x3fa18000    # 1.2617188f
        0x3fac6000
    .end array-data

    :array_d4
    .array-data 4
        0x3fa2c000
        0x3f9cc000
        0x3f976000
        0x3f904000
        0x3f8a2000
        0x3f87e000
        0x3f84e000
        0x3f824000
        0x3f81a000
        0x3f82c000
        0x3f852000
        0x3f878000    # 1.0585938f
        0x3f898000    # 1.0742188f
        0x3f908000
        0x3f97c000
        0x3f9e4000
        0x3fa74000
    .end array-data

    :array_d5
    .array-data 4
        0x3fa1e000
        0x3f9b6000
        0x3f954000
        0x3f8cc000
        0x3f882000
        0x3f85a000
        0x3f820000    # 1.015625f
        0x3f806000
        0x3f804000
        0x3f810000    # 1.0078125f
        0x3f824000
        0x3f85a000
        0x3f882000
        0x3f8d2000
        0x3f964000
        0x3f9d2000
        0x3fa5a000
    .end array-data

    :array_d6
    .array-data 4
        0x3fa18000    # 1.2617188f
        0x3f9b6000
        0x3f948000    # 1.1601562f
        0x3f8bc000
        0x3f876000
        0x3f844000
        0x3f808000    # 1.0039062f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f808000    # 1.0039062f
        0x3f816000
        0x3f848000    # 1.0351562f
        0x3f87c000
        0x3f8c4000
        0x3f958000
        0x3f9bc000
        0x3fa58000    # 1.2929688f
    .end array-data

    :array_d7
    .array-data 4
        0x3fa10000    # 1.2578125f
        0x3f9c2000
        0x3f954000
        0x3f8cc000
        0x3f87e000
        0x3f84e000
        0x3f814000
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f80a000
        0x3f81c000
        0x3f854000
        0x3f886000
        0x3f8da000
        0x3f966000
        0x3f9ca000
        0x3fa62000
    .end array-data

    :array_d8
    .array-data 4
        0x3fa26000
        0x3f9da000
        0x3f972000
        0x3f8f6000
        0x3f896000
        0x3f86a000
        0x3f83c000
        0x3f81a000
        0x3f814000
        0x3f820000    # 1.015625f
        0x3f842000
        0x3f87a000
        0x3f892000
        0x3f908000
        0x3f98e000
        0x3f9e6000
        0x3fa7c000
    .end array-data

    :array_d9
    .array-data 4
        0x3fa5e000
        0x3fa08000    # 1.2539062f
        0x3f9ae000
        0x3f93e000
        0x3f8c8000    # 1.0976562f
        0x3f88a000
        0x3f876000
        0x3f854000
        0x3f848000    # 1.0351562f
        0x3f85a000
        0x3f87c000
        0x3f896000
        0x3f8cc000
        0x3f94e000
        0x3f9b4000
        0x3fa10000    # 1.2578125f
        0x3fab0000    # 1.3359375f
    .end array-data

    :array_da
    .array-data 4
        0x3fa92000
        0x3fa42000
        0x3f9de000
        0x3f992000
        0x3f930000
        0x3f8d0000    # 1.1015625f
        0x3f896000
        0x3f884000
        0x3f882000
        0x3f88c000
        0x3f8a0000    # 1.078125f
        0x3f8d8000    # 1.1054688f
        0x3f938000    # 1.1523438f
        0x3f99e000
        0x3f9ec000
        0x3fa68000    # 1.3007812f
        0x3fb14000
    .end array-data

    :array_db
    .array-data 4
        0x3fb1c000
        0x3fa6c000
        0x3fa20000    # 1.265625f
        0x3f9e4000
        0x3f99a000
        0x3f940000    # 1.15625f
        0x3f8f2000
        0x3f8ce000
        0x3f8c2000
        0x3f8cc000
        0x3f8fc000
        0x3f948000    # 1.1601562f
        0x3f99a000
        0x3f9e4000
        0x3fa42000
        0x3fac6000
        0x3fc28000
    .end array-data

    :array_dc
    .array-data 4
        0x3fcb0000    # 1.5859375f
        0x3faf6000
        0x3fa74000
        0x3fa1e000
        0x3f9e0000    # 1.234375f
        0x3f9a2000
        0x3f96c000
        0x3f94a000
        0x3f944000
        0x3f950000    # 1.1640625f
        0x3f974000
        0x3f9aa000
        0x3f9de000
        0x3fa2a000
        0x3fa98000
        0x3fb84000
        0x3fdfa000
    .end array-data

    :array_dd
    .array-data 4
        0x3fe66000
        0x3fbbe000
        0x3fac0000    # 1.34375f
        0x3fa7a000
        0x3fa3c000
        0x3f9f8000
        0x3f9d8000    # 1.2304688f
        0x3f9bc000
        0x3f9b8000    # 1.2148438f
        0x3f9c8000    # 1.2226562f
        0x3f9e8000    # 1.2382812f
        0x3fa0a000
        0x3fa3e000
        0x3fa90000    # 1.3203125f
        0x3faf4000
        0x3fc2c000
        0x3ff1e000
    .end array-data

    :array_de
    .array-data 4
        0x3fc16000
        0x3fae0000    # 1.359375f
        0x3fa8e000
        0x3fa38000    # 1.2773438f
        0x3f9f4000
        0x3f9a6000
        0x3f96a000
        0x3f93e000
        0x3f934000
        0x3f946000
        0x3f974000
        0x3f9ba000
        0x3f9fe000
        0x3fa42000
        0x3faa0000    # 1.328125f
        0x3fb1c000
        0x3fcc0000    # 1.59375f
    .end array-data

    :array_df
    .array-data 4
        0x3fb06000
        0x3faa6000
        0x3fa48000
        0x3f9f2000
        0x3f98e000
        0x3f92c000
        0x3f8e6000
        0x3f8d0000    # 1.1015625f
        0x3f8d8000    # 1.1054688f
        0x3f8e4000
        0x3f8f4000
        0x3f93a000
        0x3f9a0000    # 1.203125f
        0x3f9f8000
        0x3fa46000
        0x3fac4000
        0x3fb84000
    .end array-data

    :array_e0
    .array-data 4
        0x3faa2000
        0x3fa72000
        0x3fa14000
        0x3f9aa000
        0x3f92e000
        0x3f8e4000
        0x3f8ba000
        0x3f896000
        0x3f88c000
        0x3f8a6000
        0x3f8ca000
        0x3f8e8000    # 1.1132812f
        0x3f92a000
        0x3f9b6000
        0x3fa14000
        0x3fa7a000
        0x3fb14000
    .end array-data

    :array_e1
    .array-data 4
        0x3fa88000    # 1.3164062f
        0x3fa3e000
        0x3f9de000
        0x3f95e000
        0x3f8ee000
        0x3f8bc000
        0x3f876000
        0x3f842000
        0x3f836000
        0x3f848000    # 1.0351562f
        0x3f87c000
        0x3f8b4000
        0x3f8e8000    # 1.1132812f
        0x3f968000    # 1.1757812f
        0x3f9e6000
        0x3fa4a000
        0x3fad4000
    .end array-data

    :array_e2
    .array-data 4
        0x3fa72000
        0x3fa22000
        0x3f9b4000
        0x3f922000
        0x3f8ca000
        0x3f892000
        0x3f83e000
        0x3f814000
        0x3f80e000
        0x3f81e000
        0x3f840000    # 1.03125f
        0x3f890000    # 1.0703125f
        0x3f8ce000
        0x3f92c000
        0x3f9cc000
        0x3fa38000    # 1.2773438f
        0x3fabc000
    .end array-data

    :array_e3
    .array-data 4
        0x3fa68000    # 1.3007812f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f90c000
        0x3f8ba000
        0x3f878000    # 1.0585938f
        0x3f824000
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f812000
        0x3f832000
        0x3f87a000
        0x3f8c6000
        0x3f91a000
        0x3f9c2000
        0x3fa28000    # 1.2695312f
        0x3fabe000
    .end array-data

    :array_e4
    .array-data 4
        0x3fa5c000
        0x3fa1e000
        0x3f9b2000
        0x3f91a000
        0x3f8c0000    # 1.09375f
        0x3f87e000
        0x3f82c000
        0x3f808000    # 1.0039062f
        0x3f806000
        0x3f816000
        0x3f83a000
        0x3f884000
        0x3f8cc000
        0x3f92e000
        0x3f9ce000
        0x3fa38000    # 1.2773438f
        0x3fac8000    # 1.3476562f
    .end array-data

    :array_e5
    .array-data 4
        0x3fa76000
        0x3fa40000    # 1.28125f
        0x3f9d4000
        0x3f944000
        0x3f8d8000    # 1.1054688f
        0x3f89a000
        0x3f860000    # 1.046875f
        0x3f832000
        0x3f82a000
        0x3f838000    # 1.0273438f
        0x3f868000
        0x3f8b0000    # 1.0859375f
        0x3f8d8000    # 1.1054688f
        0x3f95e000
        0x3f9f6000
        0x3fa4e000
        0x3fae6000
    .end array-data

    :array_e6
    .array-data 4
        0x3faac000
        0x3fa6c000
        0x3fa08000    # 1.2539062f
        0x3f98e000
        0x3f908000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f87e000
        0x3f870000    # 1.0546875f
        0x3f884000
        0x3f8b0000    # 1.0859375f
        0x3f8d2000
        0x3f912000
        0x3f9a6000
        0x3fa1a000
        0x3fa74000
        0x3fb14000
    .end array-data

    :array_e7
    .array-data 4
        0x3fad4000
        0x3fa9e000
        0x3fa3a000
        0x3f9ea000
        0x3f980000    # 1.1875f
        0x3f914000
        0x3f8d2000
        0x3f8ba000
        0x3f8ba000
        0x3f8c8000    # 1.0976562f
        0x3f8de000
        0x3f91c000
        0x3f984000
        0x3f9f6000
        0x3fa4a000
        0x3faca000
        0x3fb68000    # 1.4257812f
    .end array-data

    :array_e8
    .array-data 4
        0x3fb4a000
        0x3faba000
        0x3fa82000
        0x3fa40000    # 1.28125f
        0x3f9f0000    # 1.2421875f
        0x3f988000    # 1.1914062f
        0x3f93c000
        0x3f90c000
        0x3f8fc000
        0x3f90e000
        0x3f946000
        0x3f998000    # 1.1992188f
        0x3f9f0000    # 1.2421875f
        0x3fa42000
        0x3faa2000
        0x3fb1a000
        0x3fc74000
    .end array-data

    :array_e9
    .array-data 4
        0x3fcb8000    # 1.5898438f
        0x3fb3a000
        0x3facc000
        0x3fa80000    # 1.3125f
        0x3fa38000    # 1.2773438f
        0x3f9f4000
        0x3f9bc000
        0x3f996000
        0x3f988000    # 1.1914062f
        0x3f9a0000    # 1.203125f
        0x3f9cc000
        0x3fa06000
        0x3fa3c000
        0x3fa90000    # 1.3203125f
        0x3faf0000    # 1.3671875f
        0x3fbd2000
        0x3fe48000    # 1.7851562f
    .end array-data

    :array_ea
    .array-data 4
        0x3fe70000    # 1.8046875f
        0x3fbc2000
        0x3fabc000
        0x3fa76000
        0x3fa32000
        0x3f9f4000
        0x3f9d2000
        0x3f9ba000
        0x3f9b6000
        0x3f9c8000    # 1.2226562f
        0x3f9e6000
        0x3fa0a000
        0x3fa3a000
        0x3fa8e000
        0x3faf2000
        0x3fc28000
        0x3ff1a000
    .end array-data

    :array_eb
    .array-data 4
        0x3fc1c000
        0x3fadc000
        0x3fa8c000
        0x3fa36000
        0x3f9ee000
        0x3f9a4000
        0x3f968000    # 1.1757812f
        0x3f940000    # 1.15625f
        0x3f936000
        0x3f946000
        0x3f972000
        0x3f9b4000
        0x3f9fa000
        0x3fa3a000
        0x3fa9a000
        0x3fb12000
        0x3fcb4000
    .end array-data

    :array_ec
    .array-data 4
        0x3fb08000    # 1.3789062f
        0x3faa8000    # 1.3320312f
        0x3fa4a000
        0x3f9f2000
        0x3f992000
        0x3f928000    # 1.1445312f
        0x3f8e6000
        0x3f8d2000
        0x3f8dc000
        0x3f8e4000
        0x3f8f4000
        0x3f936000
        0x3f99e000
        0x3f9f4000
        0x3fa40000    # 1.28125f
        0x3fac0000    # 1.34375f
        0x3fb7c000
    .end array-data

    :array_ed
    .array-data 4
        0x3faa6000
        0x3fa76000
        0x3fa18000    # 1.2617188f
        0x3f9ac000
        0x3f92e000
        0x3f8e6000
        0x3f8b8000
        0x3f896000
        0x3f88c000
        0x3f8a8000    # 1.0820312f
        0x3f8ca000
        0x3f8e4000
        0x3f928000    # 1.1445312f
        0x3f9b4000
        0x3fa0a000
        0x3fa72000
        0x3fb12000
    .end array-data

    :array_ee
    .array-data 4
        0x3fa88000    # 1.3164062f
        0x3fa40000    # 1.28125f
        0x3f9de000
        0x3f95c000
        0x3f8ee000
        0x3f8be000
        0x3f876000
        0x3f842000
        0x3f836000
        0x3f846000
        0x3f878000    # 1.0585938f
        0x3f8b0000    # 1.0859375f
        0x3f8e0000    # 1.109375f
        0x3f960000    # 1.171875f
        0x3f9de000
        0x3fa42000
        0x3fad0000    # 1.3515625f
    .end array-data

    :array_ef
    .array-data 4
        0x3fa78000    # 1.3085938f
        0x3fa28000    # 1.2695312f
        0x3f9b8000    # 1.2148438f
        0x3f922000
        0x3f8c8000    # 1.0976562f
        0x3f890000    # 1.0703125f
        0x3f83e000
        0x3f812000
        0x3f80e000
        0x3f81c000
        0x3f83c000
        0x3f88c000
        0x3f8c6000
        0x3f926000
        0x3f9c4000
        0x3fa30000    # 1.2734375f
        0x3fab8000    # 1.3398438f
    .end array-data

    :array_f0
    .array-data 4
        0x3fa6a000
        0x3fa1a000
        0x3f9a8000
        0x3f90c000
        0x3f8b8000
        0x3f874000
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f80e000
        0x3f82e000
        0x3f874000
        0x3f8be000
        0x3f912000
        0x3f9b6000
        0x3fa22000
        0x3fabc000
    .end array-data

    :array_f1
    .array-data 4
        0x3fa64000
        0x3fa22000
        0x3f9b6000
        0x3f91e000
        0x3f8c0000    # 1.09375f
        0x3f87c000
        0x3f82c000
        0x3f806000
        0x3f804000
        0x3f814000
        0x3f836000
        0x3f87c000
        0x3f8c4000
        0x3f924000
        0x3f9c6000
        0x3fa34000
        0x3fac2000
    .end array-data

    :array_f2
    .array-data 4
        0x3fa7e000
        0x3fa46000
        0x3f9d8000    # 1.2304688f
        0x3f948000    # 1.1601562f
        0x3f8dc000
        0x3f89c000
        0x3f864000
        0x3f834000
        0x3f82c000
        0x3f838000    # 1.0273438f
        0x3f866000
        0x3f8ae000
        0x3f8d2000
        0x3f958000
        0x3f9f0000    # 1.2421875f
        0x3fa4c000
        0x3fade000
    .end array-data

    :array_f3
    .array-data 4
        0x3fab4000
        0x3fa78000    # 1.3085938f
        0x3fa10000    # 1.2578125f
        0x3f996000
        0x3f90e000
        0x3f8cc000
        0x3f8a6000
        0x3f884000
        0x3f874000
        0x3f886000
        0x3f8b0000    # 1.0859375f
        0x3f8d0000    # 1.1015625f
        0x3f90e000
        0x3f9a2000
        0x3fa12000
        0x3fa6e000
        0x3fb0c000
    .end array-data

    :array_f4
    .array-data 4
        0x3fae0000    # 1.359375f
        0x3faaa000
        0x3fa42000
        0x3f9f6000
        0x3f986000
        0x3f91a000
        0x3f8d8000    # 1.1054688f
        0x3f8c2000
        0x3f8c2000
        0x3f8cc000
        0x3f8de000
        0x3f91c000
        0x3f982000
        0x3f9f2000
        0x3fa46000
        0x3fac4000
        0x3fb60000    # 1.421875f
    .end array-data

    :array_f5
    .array-data 4
        0x3fb50000    # 1.4140625f
        0x3fac6000
        0x3fa8a000
        0x3fa4c000
        0x3f9f8000
        0x3f990000    # 1.1953125f
        0x3f942000
        0x3f914000
        0x3f906000
        0x3f914000
        0x3f94a000
        0x3f99a000
        0x3f9f0000    # 1.2421875f
        0x3fa3e000
        0x3fa98000
        0x3fb14000
        0x3fc68000    # 1.5507812f
    .end array-data

    :array_f6
    .array-data 4
        0x3fcc4000
        0x3fb42000
        0x3fad2000
        0x3fa84000
        0x3fa42000
        0x3f9fa000
        0x3f9c2000
        0x3f99e000
        0x3f98c000
        0x3f9a2000
        0x3f9cc000
        0x3fa06000
        0x3fa3c000
        0x3fa8c000
        0x3faee000
        0x3fbca000
        0x3fe40000    # 1.78125f
    .end array-data

    :array_f7
    .array-data 4
        0x3fdb2000
        0x3fb2c000
        0x3fa4e000
        0x3fa1c000
        0x3f9ec000
        0x3f9b8000    # 1.2148438f
        0x3f9a0000    # 1.203125f
        0x3f988000    # 1.1914062f
        0x3f98c000
        0x3f99e000
        0x3f9bc000
        0x3f9e2000
        0x3fa0e000
        0x3fa54000
        0x3faa4000
        0x3fbc2000
        0x3fe8c000
    .end array-data

    :array_f8
    .array-data 4
        0x3fb86000
        0x3fa6c000
        0x3fa2e000
        0x3f9ec000
        0x3f9aa000
        0x3f96c000
        0x3f938000    # 1.1523438f
        0x3f912000
        0x3f90a000
        0x3f91e000
        0x3f94c000
        0x3f992000
        0x3f9d6000
        0x3fa1a000
        0x3fa66000
        0x3face000
        0x3fc50000
    .end array-data

    :array_f9
    .array-data 4
        0x3fa90000    # 1.3203125f
        0x3fa4a000
        0x3f9fc000
        0x3f9b0000    # 1.2109375f
        0x3f958000
        0x3f8fa000
        0x3f8c0000    # 1.09375f
        0x3f8ae000
        0x3f8bc000
        0x3f8c8000    # 1.0976562f
        0x3f8da000
        0x3f91c000
        0x3f982000
        0x3f9dc000
        0x3fa26000
        0x3fa92000
        0x3fb32000
    .end array-data

    :array_fa
    .array-data 4
        0x3fa3e000
        0x3fa2e000
        0x3f9dc000
        0x3f974000
        0x3f8fc000
        0x3f8be000
        0x3f896000
        0x3f87c000
        0x3f876000
        0x3f892000
        0x3f8b8000
        0x3f8da000
        0x3f91c000
        0x3f9a2000
        0x3fa02000
        0x3fa56000
        0x3fae2000
    .end array-data

    :array_fb
    .array-data 4
        0x3fa42000
        0x3fa0a000
        0x3f9ac000
        0x3f930000
        0x3f8c8000    # 1.0976562f
        0x3f898000    # 1.0742188f
        0x3f85e000
        0x3f82e000
        0x3f828000    # 1.0195312f
        0x3f83a000
        0x3f872000
        0x3f8ae000
        0x3f8e2000
        0x3f95a000
        0x3f9de000
        0x3fa38000    # 1.2773438f
        0x3fac2000
    .end array-data

    :array_fc
    .array-data 4
        0x3fa3c000
        0x3f9fa000
        0x3f98c000
        0x3f8fc000
        0x3f8a8000    # 1.0820312f
        0x3f874000
        0x3f82a000
        0x3f808000    # 1.0039062f
        0x3f804000
        0x3f81a000
        0x3f840000    # 1.03125f
        0x3f890000    # 1.0703125f
        0x3f8c8000    # 1.0976562f
        0x3f924000
        0x3f9c8000    # 1.2226562f
        0x3fa3a000
        0x3fab2000
    .end array-data

    :array_fd
    .array-data 4
        0x3fa32000
        0x3f9f0000    # 1.2421875f
        0x3f982000
        0x3f8ee000
        0x3f89c000
        0x3f85e000
        0x3f812000
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f814000
        0x3f834000
        0x3f87c000
        0x3f8c6000
        0x3f918000    # 1.1367188f
        0x3f9be000
        0x3fa28000    # 1.2695312f
        0x3fab4000
    .end array-data

    :array_fe
    .array-data 4
        0x3fa2a000
        0x3f9f8000
        0x3f98c000
        0x3f8fc000
        0x3f8a4000
        0x3f866000
        0x3f820000    # 1.015625f
        0x3f804000
        0x3f806000
        0x3f818000
        0x3f83a000
        0x3f888000    # 1.0664062f
        0x3f8ce000
        0x3f92c000
        0x3f9cc000
        0x3fa38000    # 1.2773438f
        0x3fabc000
    .end array-data

    :array_ff
    .array-data 4
        0x3fa3e000
        0x3fa14000
        0x3f9b2000
        0x3f926000
        0x3f8bc000
        0x3f884000
        0x3f854000
        0x3f82c000
        0x3f826000
        0x3f834000
        0x3f868000
        0x3f8b2000
        0x3f8da000
        0x3f95c000
        0x3f9f6000
        0x3fa50000    # 1.2890625f
        0x3fada000
    .end array-data

    :array_100
    .array-data 4
        0x3fa5c000
        0x3fa38000    # 1.2773438f
        0x3f9e0000    # 1.234375f
        0x3f968000    # 1.1757812f
        0x3f8ee000
        0x3f8b2000
        0x3f890000    # 1.0703125f
        0x3f876000
        0x3f86a000
        0x3f884000
        0x3f8aa000
        0x3f8d0000    # 1.1015625f
        0x3f912000
        0x3f9a4000
        0x3fa18000    # 1.2617188f
        0x3fa6a000
        0x3faf6000
    .end array-data

    :array_101
    .array-data 4
        0x3fa78000    # 1.3085938f
        0x3fa5e000
        0x3fa06000
        0x3f9c6000
        0x3f962000
        0x3f8fa000
        0x3f8c0000    # 1.09375f
        0x3f8b0000    # 1.0859375f
        0x3f8b2000
        0x3f8c2000
        0x3f8d6000
        0x3f916000
        0x3f980000    # 1.1875f
        0x3f9f2000
        0x3fa44000
        0x3faac000
        0x3fb30000    # 1.3984375f
    .end array-data

    :array_102
    .array-data 4
        0x3fad2000
        0x3fa66000
        0x3fa40000    # 1.28125f
        0x3fa0e000
        0x3f9ce000
        0x3f96c000
        0x3f92a000
        0x3f900000    # 1.125f
        0x3f8f4000
        0x3f906000
        0x3f93a000
        0x3f98e000
        0x3f9e6000
        0x3fa2e000
        0x3fa80000    # 1.3125f
        0x3fae8000
        0x3fc1c000
    .end array-data

    :array_103
    .array-data 4
        0x3fc1a000
        0x3fac6000
        0x3fa74000
        0x3fa3c000
        0x3fa10000    # 1.2578125f
        0x3f9d6000
        0x3f9a6000
        0x3f988000    # 1.1914062f
        0x3f97c000
        0x3f990000    # 1.1953125f
        0x3f9c0000    # 1.21875f
        0x3f9f6000
        0x3fa28000    # 1.2695312f
        0x3fa6c000
        0x3fabe000
        0x3fb7e000
        0x3fde6000
    .end array-data

    :array_104
    .array-data 4
        0x4072f000
        0x40304000    # 2.7539062f
        0x4012d000
        0x40054000    # 2.0820312f
        0x3ff4e000
        0x3fe52000
        0x3fd9c000
        0x3fd2a000
        0x3fd0a000
        0x3fd34000
        0x3fda4000
        0x3fe50000    # 1.7890625f
        0x3ff40000    # 1.90625f
        0x40053000
        0x40146000
        0x4033f000
        0x407a9000
    .end array-data

    :array_105
    .array-data 4
        0x403c0000    # 2.9375f
        0x40179000
        0x4006b000
        0x3ff44000
        0x3fe0a000
        0x3fcfa000
        0x3fc28000
        0x3fba0000    # 1.453125f
        0x3fb78000    # 1.4335938f
        0x3fba4000
        0x3fc28000
        0x3fcfc000
        0x3fe06000
        0x3ff40000    # 1.90625f
        0x40073000
        0x40197000
        0x40408000    # 3.0078125f
    .end array-data

    :array_106
    .array-data 4
        0x401f6000
        0x400b8000    # 2.1796875f
        0x3ff8a000
        0x3fe0e000
        0x3fcb0000    # 1.5859375f
        0x3fb80000    # 1.4375f
        0x3fabc000
        0x3fa58000    # 1.2929688f
        0x3fa44000
        0x3fa64000
        0x3fac2000
        0x3fb88000
        0x3fcb0000    # 1.5859375f
        0x3fe02000
        0x3ff74000
        0x400c1000
        0x4022b000
    .end array-data

    :array_107
    .array-data 4
        0x4011d000
        0x40026000
        0x3fe90000    # 1.8203125f
        0x3fcfe000
        0x3fb84000
        0x3fa8c000
        0x3f9ea000
        0x3f97a000
        0x3f952000
        0x3f986000
        0x3f9f6000
        0x3fa86000
        0x3fb7c000
        0x3fcf2000
        0x3fe7c000
        0x40028000    # 2.0390625f
        0x40158000    # 2.3359375f
    .end array-data

    :array_108
    .array-data 4
        0x400ba000
        0x3ff78000    # 1.9335938f
        0x3fdc6000
        0x3fc14000
        0x3fabe000
        0x3f9ea000
        0x3f936000
        0x3f8b6000
        0x3f88e000
        0x3f8ba000
        0x3f932000
        0x3f9dc000
        0x3faae000
        0x3fc0e000
        0x3fdb4000
        0x3ff78000    # 1.9335938f
        0x400cc000    # 2.1992188f
    .end array-data

    :array_109
    .array-data 4
        0x40081000
        0x3ff08000    # 1.8789062f
        0x3fd46000
        0x3fb80000    # 1.4375f
        0x3fa4e000
        0x3f970000    # 1.1796875f
        0x3f8b2000
        0x3f848000    # 1.0351562f
        0x3f826000
        0x3f84c000
        0x3f8b0000    # 1.0859375f
        0x3f96a000
        0x3fa44000
        0x3fb76000
        0x3fd40000    # 1.65625f
        0x3ff06000
        0x4008a000
    .end array-data

    :array_10a
    .array-data 4
        0x4006f000
        0x3fef4000
        0x3fd1a000
        0x3fb50000    # 1.4140625f
        0x3fa26000
        0x3f93a000
        0x3f87e000
        0x3f816000
        0x3f800000    # 1.0f
        0x3f824000
        0x3f884000
        0x3f93a000
        0x3fa20000    # 1.265625f
        0x3fb4c000
        0x3fd10000    # 1.6328125f
        0x3fecc000
        0x4007a000
    .end array-data

    :array_10b
    .array-data 4
        0x40076000
        0x3ff1a000
        0x3fd44000
        0x3fb7c000
        0x3fa46000
        0x3f964000
        0x3f8a4000
        0x3f83c000
        0x3f81c000
        0x3f844000
        0x3f8a6000
        0x3f960000    # 1.171875f
        0x3fa42000
        0x3fb7a000
        0x3fd3a000
        0x3fef8000
        0x4008c000    # 2.1367188f
    .end array-data

    :array_10c
    .array-data 4
        0x400b1000
        0x3ff88000    # 1.9414062f
        0x3fdba000
        0x3fc00000    # 1.5f
        0x3faaa000
        0x3f9d0000    # 1.2265625f
        0x3f91c000
        0x3f8a8000    # 1.0820312f
        0x3f884000
        0x3f8a8000    # 1.0820312f
        0x3f91e000
        0x3f9d8000    # 1.2304688f
        0x3fa9c000
        0x3fbfc000
        0x3fdbc000
        0x3ff6c000
        0x400cb000
    .end array-data

    :array_10d
    .array-data 4
        0x4012b000
        0x40028000    # 2.0390625f
        0x3fe90000    # 1.8203125f
        0x3fce0000    # 1.609375f
        0x3fb62000
        0x3fa70000    # 1.3046875f
        0x3f9dc000
        0x3f962000
        0x3f938000    # 1.1523438f
        0x3f966000
        0x3f9da000
        0x3fa72000
        0x3fb58000    # 1.4179688f
        0x3fcda000
        0x3fe6e000
        0x40017000
        0x40140000    # 2.3125f
    .end array-data

    :array_10e
    .array-data 4
        0x401c9000
        0x400b4000    # 2.1757812f
        0x3ff80000    # 1.9375f
        0x3fe02000
        0x3fc96000
        0x3fb6c000
        0x3faa6000
        0x3fa42000
        0x3fa24000
        0x3fa48000
        0x3faaa000
        0x3fb64000
        0x3fc8c000
        0x3fdf4000
        0x3ff6e000
        0x400b6000
        0x40205000
    .end array-data

    :array_10f
    .array-data 4
        0x402fb000
        0x40157000
        0x40062000
        0x3ff52000
        0x3fe0a000
        0x3fcda000
        0x3fbf0000    # 1.4921875f
        0x3fb6c000
        0x3fb40000    # 1.40625f
        0x3fb66000
        0x3fbee000
        0x3fcd2000
        0x3fdee000
        0x3ff32000
        0x4006a000
        0x40187000
        0x403a3000
    .end array-data

    :array_110
    .array-data 4
        0x40589000
        0x4027f000
        0x4012b000
        0x4004b000
        0x3ff50000    # 1.9140625f
        0x3fe4c000
        0x3fd7e000
        0x3fcfa000
        0x3fcd2000
        0x3fcfc000
        0x3fd7a000
        0x3fe40000    # 1.78125f
        0x3ff38000    # 1.9023438f
        0x40044000    # 2.0664062f
        0x40130000    # 2.296875f
        0x402ca000
        0x4066f000
    .end array-data

    :array_111
    .array-data 4
        0x406f0000    # 3.734375f
        0x4030e000
        0x40156000
        0x4008a000
        0x3ffca000
        0x3feb6000
        0x3fe04000
        0x3fd8c000
        0x3fd64000
        0x3fd92000
        0x3fe0a000
        0x3febc000
        0x3ffb4000
        0x40086000
        0x40167000
        0x40344000
        0x40778000    # 3.8671875f
    .end array-data

    :array_112
    .array-data 4
        0x403b5000
        0x40197000
        0x400a0000    # 2.15625f
        0x3ffb2000
        0x3fe70000    # 1.8046875f
        0x3fd54000
        0x3fc7c000
        0x3fbec000
        0x3fbc0000    # 1.46875f
        0x3fbf2000
        0x3fc7c000
        0x3fd58000    # 1.6679688f
        0x3fe68000    # 1.8007812f
        0x3ffa0000    # 1.953125f
        0x4009a000
        0x401ab000
        0x403fd000
    .end array-data

    :array_113
    .array-data 4
        0x40203000
        0x400e2000
        0x3fff2000
        0x3fe6c000
        0x3fd02000
        0x3fbce000
        0x3fafe000
        0x3fa96000
        0x3fa80000    # 1.3125f
        0x3faa4000
        0x3fb06000
        0x3fbd4000
        0x3fd06000
        0x3fe5a000
        0x3ffca000
        0x400e0000    # 2.21875f
        0x40235000
    .end array-data

    :array_114
    .array-data 4
        0x4013b000
        0x40058000    # 2.0859375f
        0x3fef0000    # 1.8671875f
        0x3fd50000    # 1.6640625f
        0x3fbcc000
        0x3facc000
        0x3fa22000
        0x3f9ac000
        0x3f982000
        0x3f9b6000
        0x3fa2c000
        0x3faca000
        0x3fbbc000
        0x3fd48000    # 1.6601562f
        0x3fece000
        0x40048000    # 2.0703125f
        0x4016a000
    .end array-data

    :array_115
    .array-data 4
        0x400d8000    # 2.2109375f
        0x3ffd4000
        0x3fe18000    # 1.7617188f
        0x3fc5e000
        0x3fafe000
        0x3fa1e000
        0x3f95a000
        0x3f8d0000    # 1.1015625f
        0x3f8a8000    # 1.0820312f
        0x3f8d4000
        0x3f956000
        0x3fa0e000
        0x3faee000
        0x3fc5a000
        0x3fe04000
        0x3ffc0000    # 1.96875f
        0x400eb000
    .end array-data

    :array_116
    .array-data 4
        0x4009a000
        0x3ff58000    # 1.9179688f
        0x3fd8c000
        0x3fbc0000    # 1.46875f
        0x3fa86000
        0x3f99e000
        0x3f8cc000
        0x3f854000
        0x3f82e000
        0x3f858000    # 1.0429688f
        0x3f8c6000
        0x3f994000
        0x3fa7c000
        0x3fbb8000    # 1.4648438f
        0x3fd8a000
        0x3ff4a000
        0x400a7000
    .end array-data

    :array_117
    .array-data 4
        0x40083000
        0x3ff32000
        0x3fd5c000
        0x3fb86000
        0x3fa56000
        0x3f964000
        0x3f892000
        0x3f81c000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f89a000
        0x3f960000    # 1.171875f
        0x3fa54000
        0x3fb86000
        0x3fd5a000
        0x3ff14000
        0x40099000
    .end array-data

    :array_118
    .array-data 4
        0x40088000    # 2.1328125f
        0x3ff54000
        0x3fd86000
        0x3fbb0000    # 1.4609375f
        0x3fa78000    # 1.3085938f
        0x3f988000    # 1.1914062f
        0x3f8b4000
        0x3f842000
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8bc000
        0x3f988000    # 1.1914062f
        0x3fa76000
        0x3fbb4000
        0x3fd84000
        0x3ff44000
        0x400ac000    # 2.1679688f
    .end array-data

    :array_119
    .array-data 4
        0x400c8000    # 2.1953125f
        0x3ffd4000
        0x3fe02000
        0x3fc38000    # 1.5273438f
        0x3fadc000
        0x3f9f8000
        0x3f93a000
        0x3f8ba000
        0x3f894000
        0x3f8ba000
        0x3f93e000
        0x3fa04000
        0x3fad2000
        0x3fc3c000
        0x3fe0a000
        0x3ffb8000    # 1.9648438f
        0x400f3000
    .end array-data

    :array_11a
    .array-data 4
        0x40143000
        0x40051000
        0x3fed6000
        0x3fd20000    # 1.640625f
        0x3fb96000
        0x3faa6000
        0x3fa02000
        0x3f986000
        0x3f95a000
        0x3f98c000
        0x3fa08000    # 1.2539062f
        0x3faa8000    # 1.3320312f
        0x3fb92000
        0x3fd22000
        0x3fec0000    # 1.84375f
        0x4003d000
        0x40167000
    .end array-data

    :array_11b
    .array-data 4
        0x401d7000
        0x400da000
        0x3ffd2000
        0x3fe56000
        0x3fce4000
        0x3fbaa000
        0x3fadc000
        0x3fa74000
        0x3fa54000
        0x3fa7e000
        0x3fae2000
        0x3fba4000
        0x3fcd4000
        0x3fe46000
        0x3ffc2000
        0x400e0000    # 2.21875f
        0x40220000    # 2.53125f
    .end array-data

    :array_11c
    .array-data 4
        0x402ef000
        0x40175000
        0x40097000
        0x3ffb4000
        0x3fe62000
        0x3fd22000
        0x3fc36000
        0x3fba4000
        0x3fb72000
        0x3fba0000    # 1.453125f
        0x3fc34000
        0x3fd24000
        0x3fe48000    # 1.7851562f
        0x3ff96000
        0x4009c000
        0x401a7000
        0x403b3000
    .end array-data

    :array_11d
    .array-data 4
        0x40551000
        0x40293000
        0x4015d000
        0x40087000
        0x3ffba000
        0x3feaa000
        0x3fdd4000
        0x3fd48000    # 1.6601562f
        0x3fd16000
        0x3fd4e000
        0x3fdd8000    # 1.7304688f
        0x3fea8000
        0x3ffac000
        0x40085000
        0x40163000
        0x402e8000    # 2.7265625f
        0x40671000
    .end array-data

    :array_11e
    .array-data 4
        0x406ff000
        0x40311000
        0x40151000
        0x40081000
        0x3ffac000
        0x3fe9e000
        0x3fde6000
        0x3fd72000
        0x3fd4a000
        0x3fd7a000
        0x3fdf2000
        0x3fea8000
        0x3ffa0000    # 1.953125f
        0x40080000    # 2.125f
        0x40165000
        0x40343000
        0x4077b000
    .end array-data

    :array_11f
    .array-data 4
        0x403c1000
        0x40196000
        0x4009d000
        0x3ffa6000
        0x3fe5c000
        0x3fd42000
        0x3fc6a000
        0x3fbdc000
        0x3fbb2000
        0x3fbe4000
        0x3fc6c000
        0x3fd46000
        0x3fe5e000
        0x3ff96000
        0x40099000
        0x401ab000
        0x403fc000    # 2.9960938f
    .end array-data

    :array_120
    .array-data 4
        0x4020e000
        0x400e8000    # 2.2265625f
        0x3fffa000
        0x3fe6c000
        0x3fd00000    # 1.625f
        0x3fbc2000
        0x3faf4000
        0x3fa8c000
        0x3fa78000    # 1.3085938f
        0x3fa9a000
        0x3fafc000
        0x3fbcc000
        0x3fd04000
        0x3fe5a000
        0x3ffcc000
        0x400e7000
        0x4023b000
    .end array-data

    :array_121
    .array-data 4
        0x4014a000
        0x40062000
        0x3fefe000
        0x3fd58000    # 1.6679688f
        0x3fbcc000
        0x3faca000
        0x3fa1a000
        0x3f9a6000
        0x3f97a000
        0x3f9b2000
        0x3fa28000    # 1.2695312f
        0x3fac4000
        0x3fbbc000
        0x3fd4e000
        0x3fed4000
        0x4004f000
        0x40178000    # 2.3671875f
    .end array-data

    :array_122
    .array-data 4
        0x400e7000
        0x3ffec000
        0x3fe28000    # 1.7695312f
        0x3fc64000
        0x3fb02000
        0x3fa20000    # 1.265625f
        0x3f958000
        0x3f8ce000
        0x3f8a6000
        0x3f8d0000    # 1.1015625f
        0x3f952000
        0x3fa0c000
        0x3faec000
        0x3fc5c000
        0x3fe10000    # 1.7578125f
        0x3ffd2000
        0x400f8000    # 2.2421875f
    .end array-data

    :array_123
    .array-data 4
        0x400ad000
        0x3ff76000
        0x3fda0000    # 1.703125f
        0x3fbca000
        0x3fa8a000
        0x3f99e000
        0x3f8ca000
        0x3f852000
        0x3f82e000
        0x3f856000
        0x3f8c4000
        0x3f994000
        0x3fa7c000
        0x3fbbe000
        0x3fd96000
        0x3ff5e000
        0x400b6000
    .end array-data

    :array_124
    .array-data 4
        0x40094000    # 2.1445312f
        0x3ff4c000
        0x3fd6e000
        0x3fb92000
        0x3fa5c000
        0x3f964000
        0x3f892000
        0x3f81c000
        0x3f800000    # 1.0f
        0x3f828000    # 1.0195312f
        0x3f898000    # 1.0742188f
        0x3f95e000
        0x3fa56000
        0x3fb8c000
        0x3fd64000
        0x3ff28000    # 1.8945312f
        0x400a9000
    .end array-data

    :array_125
    .array-data 4
        0x4009f000
        0x3ff74000
        0x3fd9e000
        0x3fbc0000    # 1.46875f
        0x3fa7e000
        0x3f98c000
        0x3f8b4000
        0x3f842000
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8ba000
        0x3f986000
        0x3fa7a000
        0x3fbb8000    # 1.4648438f
        0x3fd90000    # 1.6953125f
        0x3ff5c000
        0x400ba000
    .end array-data

    :array_126
    .array-data 4
        0x400e0000    # 2.21875f
        0x3fff6000
        0x3fe1c000
        0x3fc4a000
        0x3fae6000
        0x3f9fc000
        0x3f93e000
        0x3f8bc000
        0x3f896000
        0x3f8ba000
        0x3f93c000
        0x3fa06000
        0x3fad4000
        0x3fc42000
        0x3fe18000    # 1.7617188f
        0x3ffce000
        0x400ff000
    .end array-data

    :array_127
    .array-data 4
        0x40159000
        0x40063000
        0x3fef0000    # 1.8671875f
        0x3fd32000
        0x3fba0000    # 1.453125f
        0x3faaa000
        0x3fa06000
        0x3f98a000
        0x3f95c000
        0x3f98c000
        0x3fa06000
        0x3faa8000    # 1.3320312f
        0x3fb94000
        0x3fd2a000
        0x3feca000
        0x40046000
        0x40171000
    .end array-data

    :array_128
    .array-data 4
        0x401f0000    # 2.484375f
        0x400eb000
        0x3ffea000
        0x3fe6a000
        0x3fcea000
        0x3fbae000
        0x3fade000
        0x3fa76000
        0x3fa56000
        0x3fa7c000
        0x3fade000
        0x3fba2000
        0x3fcd4000
        0x3fe4a000
        0x3ffce000
        0x400e5000
        0x40227000
    .end array-data

    :array_129
    .array-data 4
        0x40302000
        0x40186000
        0x400a0000    # 2.15625f
        0x3ffc4000
        0x3fe68000    # 1.8007812f
        0x3fd24000
        0x3fc32000
        0x3fba0000    # 1.453125f
        0x3fb70000    # 1.4296875f
        0x3fb9a000
        0x3fc2e000
        0x3fd1e000
        0x3fe42000
        0x3ff96000
        0x4009c000
        0x401ab000
        0x403b2000
    .end array-data

    :array_12a
    .array-data 4
        0x40564000    # 3.3476562f
        0x4029c000    # 2.6523438f
        0x40163000
        0x4008a000
        0x3ffbc000
        0x3fea0000    # 1.828125f
        0x3fdca000
        0x3fd3e000
        0x3fd0a000
        0x3fd3c000
        0x3fdc6000
        0x3fe9a000
        0x3ffa0000    # 1.953125f
        0x4007f000
        0x40164000
        0x402e8000    # 2.7265625f
        0x40673000
    .end array-data

    :array_12b
    .array-data 4
        0x405db000
        0x40243000
        0x400c1000
        0x40014000    # 2.0195312f
        0x3ff0c000
        0x3fe1e000
        0x3fd86000
        0x3fd1c000
        0x3fd00000    # 1.625f
        0x3fd2c000
        0x3fd98000    # 1.6992188f
        0x3fe3e000
        0x3ff18000    # 1.8867188f
        0x40021000
        0x400e0000    # 2.21875f
        0x4028b000
        0x40665000
    .end array-data

    :array_12c
    .array-data 4
        0x402f4000
        0x40108000    # 2.2578125f
        0x40033000
        0x3ff0c000
        0x3fde0000    # 1.734375f
        0x3fce4000
        0x3fc22000
        0x3fba0000    # 1.453125f
        0x3fb7c000
        0x3fbaa000
        0x3fc2a000
        0x3fcfa000
        0x3fdfc000
        0x3ff20000    # 1.890625f
        0x4003f000
        0x40132000
        0x40347000
    .end array-data

    :array_12d
    .array-data 4
        0x40173000
        0x40079000
        0x3ff54000
        0x3fdec000
        0x3fc9c000
        0x3fb7a000
        0x3fabe000
        0x3fa62000
        0x3fa54000
        0x3fa74000
        0x3fad0000    # 1.3515625f
        0x3fb90000    # 1.4453125f
        0x3fcb6000
        0x3fdfe000
        0x3ff5a000
        0x4008e000
        0x401b4000
    .end array-data

    :array_12e
    .array-data 4
        0x400cc000    # 2.1992188f
        0x4000f000
        0x3fe82000
        0x3fcf2000
        0x3fb7e000
        0x3fa8e000
        0x3f9ee000
        0x3f988000    # 1.1914062f
        0x3f962000
        0x3f996000
        0x3fa06000
        0x3fa9e000
        0x3fb8a000
        0x3fd06000
        0x3fe84000
        0x4000d000
        0x40115000
    .end array-data

    :array_12f
    .array-data 4
        0x4008d000
        0x3ff70000
        0x3fdc6000
        0x3fc18000    # 1.5117188f
        0x3fac6000
        0x3f9ee000
        0x3f934000
        0x3f8b6000
        0x3f894000
        0x3f8bc000
        0x3f93c000
        0x3f9f4000
        0x3fad0000    # 1.3515625f
        0x3fc2c000
        0x3fdd6000
        0x3ff78000    # 1.9335938f
        0x400b9000
    .end array-data

    :array_130
    .array-data 4
        0x40060000    # 2.09375f
        0x3ff0e000
        0x3fd4e000
        0x3fb8c000
        0x3fa5c000
        0x3f97a000
        0x3f8b2000
        0x3f844000
        0x3f824000
        0x3f84c000
        0x3f8ba000
        0x3f988000    # 1.1914062f
        0x3fa66000
        0x3fb9c000
        0x3fd68000
        0x3ff26000
        0x40083000
    .end array-data

    :array_131
    .array-data 4
        0x4004c000
        0x3fee8000    # 1.8632812f
        0x3fd22000
        0x3fb5e000
        0x3fa34000
        0x3f946000
        0x3f87e000
        0x3f814000
        0x3f800000    # 1.0f
        0x3f828000    # 1.0195312f
        0x3f894000
        0x3f956000
        0x3fa48000
        0x3fb70000    # 1.4296875f
        0x3fd3c000
        0x3feee000
        0x40073000
    .end array-data

    :array_132
    .array-data 4
        0x40051000
        0x3ff0c000
        0x3fd4a000
        0x3fb86000
        0x3fa52000
        0x3f96a000
        0x3f8a0000    # 1.078125f
        0x3f83a000
        0x3f81c000
        0x3f844000
        0x3f8b0000    # 1.0859375f
        0x3f97e000
        0x3fa6a000
        0x3fb9e000
        0x3fd64000
        0x3ff1c000
        0x40085000
    .end array-data

    :array_133
    .array-data 4
        0x40088000    # 2.1328125f
        0x3ff7c000
        0x3fdc2000
        0x3fc04000
        0x3faae000
        0x3f9d2000
        0x3f91e000
        0x3f8a8000    # 1.0820312f
        0x3f886000
        0x3f8aa000
        0x3f92a000
        0x3f9f0000    # 1.2421875f
        0x3fabc000
        0x3fc1e000
        0x3fde6000
        0x3ff88000    # 1.9414062f
        0x400c3000
    .end array-data

    :array_134
    .array-data 4
        0x400e2000
        0x40013000
        0x3fe7e000
        0x3fcd2000
        0x3fb5c000
        0x3fa76000
        0x3f9da000
        0x3f96c000
        0x3f948000    # 1.1601562f
        0x3f97a000
        0x3f9ea000
        0x3fa88000    # 1.3164062f
        0x3fb6e000
        0x3fcf4000
        0x3fe8a000
        0x40014000    # 2.0195312f
        0x4011e000
    .end array-data

    :array_135
    .array-data 4
        0x4015b000
        0x40083000
        0x3ff52000
        0x3fdf8000    # 1.7460938f
        0x3fc98000    # 1.5742188f
        0x3fb6a000
        0x3fab0000    # 1.3359375f
        0x3fa54000
        0x3fa3a000
        0x3fa62000
        0x3fabe000
        0x3fb78000    # 1.4335938f
        0x3fc9e000
        0x3fe02000
        0x3ff6e000
        0x40099000
        0x401af000
    .end array-data

    :array_136
    .array-data 4
        0x40247000
        0x400fe000
        0x4003c000    # 2.0585938f
        0x3ff2c000
        0x3fe00000    # 1.75f
        0x3fcd6000
        0x3fbfe000
        0x3fb7a000
        0x3fb4e000
        0x3fb7a000
        0x3fc00000    # 1.5f
        0x3fce2000
        0x3fdf6000
        0x3ff2c000
        0x40051000
        0x4013f000
        0x4030f000
    .end array-data

    :array_137
    .array-data 4
        0x40461000
        0x401e8000    # 2.4765625f
        0x400df000
        0x4002a000
        0x3ff3a000
        0x3fe4a000
        0x3fd88000    # 1.6914062f
        0x3fd0c000
        0x3fcde000
        0x3fd10000    # 1.6328125f
        0x3fd92000
        0x3fe50000    # 1.7890625f
        0x3ff3c000
        0x40034000    # 2.0507812f
        0x400f8000    # 2.2421875f
        0x4024e000
        0x40590000    # 3.390625f
    .end array-data

    :array_138
    .array-data 4
        0x40818000    # 4.046875f
        0x403ad000
        0x401ac000    # 2.4179688f
        0x400bd000
        0x40000000    # 2.0f
        0x3fee8000    # 1.8632812f
        0x3fe22000
        0x3fda2000
        0x3fd80000    # 1.6875f
        0x3fdac000
        0x3fe28000    # 1.7695312f
        0x3fee6000
        0x3ffee000
        0x400bb000
        0x401c4000    # 2.4414062f
        0x403e8000    # 2.9765625f
        0x40857000
    .end array-data

    :array_139
    .array-data 4
        0x4047a000
        0x401ff000
        0x400d6000
        0x3fff4000
        0x3fe9a000
        0x3fd70000    # 1.6796875f
        0x3fc8c000
        0x3fbf6000
        0x3fbca000
        0x3fbfa000
        0x3fc88000    # 1.5664062f
        0x3fd70000    # 1.6796875f
        0x3fe94000
        0x3ffec000
        0x400dd000
        0x4021d000
        0x404c0000    # 3.1875f
    .end array-data

    :array_13a
    .array-data 4
        0x40289000
        0x4012b000
        0x40020000    # 2.03125f
        0x3fe9e000
        0x3fd1e000
        0x3fbd4000
        0x3fb00000    # 1.375f
        0x3fa90000    # 1.3203125f
        0x3fa7a000
        0x3fa9c000
        0x3fb06000
        0x3fbdc000
        0x3fd1e000
        0x3fe8e000
        0x40013000
        0x40132000
        0x402bc000    # 2.6835938f
    .end array-data

    :array_13b
    .array-data 4
        0x4019c000    # 2.4023438f
        0x4008a000
        0x3ff2c000
        0x3fd74000
        0x3fbd8000
        0x3faca000
        0x3fa18000    # 1.2617188f
        0x3f99e000
        0x3f970000    # 1.1796875f
        0x3f9a8000
        0x3fa22000
        0x3fac4000
        0x3fbd0000    # 1.4765625f
        0x3fd64000
        0x3ff16000
        0x4008b000
        0x401d6000
    .end array-data

    :array_13c
    .array-data 4
        0x4012e000
        0x40016000
        0x3fe4e000
        0x3fc76000
        0x3fb02000
        0x3fa18000    # 1.2617188f
        0x3f952000
        0x3f8c8000    # 1.0976562f
        0x3f89c000
        0x3f8cc000
        0x3f94e000
        0x3fa0a000
        0x3faf0000    # 1.3671875f
        0x3fc70000    # 1.5546875f
        0x3fe3a000
        0x40015000
        0x4013f000
    .end array-data

    :array_13d
    .array-data 4
        0x400ef000
        0x3ffb2000
        0x3fdc2000
        0x3fbd6000
        0x3fa86000
        0x3f992000
        0x3f8c6000
        0x3f850000    # 1.0390625f
        0x3f82a000
        0x3f852000
        0x3f8c2000
        0x3f98c000
        0x3fa7c000
        0x3fbcc000
        0x3fdba000
        0x3ffac000
        0x400f6000
    .end array-data

    :array_13e
    .array-data 4
        0x400db000
        0x3ff9c000
        0x3fd96000
        0x3fba2000
        0x3fa5c000
        0x3f95a000
        0x3f88e000
        0x3f81c000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f892000
        0x3f958000
        0x3fa54000
        0x3fb9c000
        0x3fd88000    # 1.6914062f
        0x3ff6e000
        0x400e3000
    .end array-data

    :array_13f
    .array-data 4
        0x400e4000    # 2.2226562f
        0x3ffc4000
        0x3fdc2000
        0x3fbd2000
        0x3fa80000    # 1.3125f
        0x3f986000
        0x3f8b6000
        0x3f844000
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8b6000
        0x3f982000
        0x3fa7a000
        0x3fbce000
        0x3fdb6000
        0x3ff9e000
        0x400f7000
    .end array-data

    :array_140
    .array-data 4
        0x40124000    # 2.2851562f
        0x4001f000
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faee000
        0x3f9fe000
        0x3f93a000
        0x3f8ba000
        0x3f892000
        0x3f8ba000
        0x3f93a000
        0x3fa04000
        0x3fadc000
        0x3fc5a000
        0x3fe40000    # 1.78125f
        0x4000f000
        0x4013d000
    .end array-data

    :array_141
    .array-data 4
        0x401ab000
        0x4008d000
        0x3ff2c000
        0x3fd54000
        0x3fbb6000
        0x3faac000
        0x3fa08000    # 1.2539062f
        0x3f984000
        0x3f956000
        0x3f988000    # 1.1914062f
        0x3fa06000
        0x3faae000
        0x3fbaa000
        0x3fd4c000
        0x3ff06000
        0x40079000
        0x401bd000
    .end array-data

    :array_142
    .array-data 4
        0x40259000
        0x40127000
        0x4001a000
        0x3fe90000    # 1.8203125f
        0x3fd04000
        0x3fbc0000    # 1.46875f
        0x3fae8000
        0x3fa7a000
        0x3fa58000    # 1.2929688f
        0x3fa80000    # 1.3125f
        0x3faec000
        0x3fbb4000
        0x3fcf6000
        0x3fe7e000
        0x4000f000
        0x40126000
        0x40294000    # 2.6445312f
    .end array-data

    :array_143
    .array-data 4
        0x403a9000
        0x401db000
        0x400cd000
        0x3fffe000    # 1.9990234f
        0x3fe98000    # 1.8242188f
        0x3fd4e000
        0x3fc50000
        0x3fbc0000    # 1.46875f
        0x3fb90000    # 1.4453125f
        0x3fbb8000    # 1.4648438f
        0x3fc4c000
        0x3fd44000
        0x3fe78000    # 1.8085938f
        0x3ffdc000
        0x400d3000
        0x4020c000    # 2.5117188f
        0x40455000
    .end array-data

    :array_144
    .array-data 4
        0x4066f000
        0x4031f000
        0x401a9000
        0x400b3000
        0x3fffe000    # 1.9990234f
        0x3fee0000    # 1.859375f
        0x3fe00000    # 1.75f
        0x3fd70000    # 1.6796875f
        0x3fd42000
        0x3fd70000    # 1.6796875f
        0x3fdfa000
        0x3fed2000
        0x3ffe2000
        0x400aa000
        0x401ad000
        0x4036b000
        0x4075d000
    .end array-data

    :array_145
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_146
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_147
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_148
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_149
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_14a
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_14b
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_14c
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_14d
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_14e
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_14f
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_150
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_151
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_152
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_153
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_154
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_155
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_156
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_157
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_158
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_159
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_15a
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_15b
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_15c
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_15d
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_15e
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_15f
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_160
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_161
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_162
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_163
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_164
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_165
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_166
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_167
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_168
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_169
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_16a
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_16b
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_16c
    .array-data 4
        0x407f8000    # 3.9921875f
        0x40388000    # 2.8828125f
        0x40190000    # 2.390625f
        0x400a6000
        0x3ffd8000    # 1.9804688f
        0x3fec8000    # 1.8476562f
        0x3fe04000
        0x3fd88000    # 1.6914062f
        0x3fd66000
        0x3fd92000
        0x3fe0c000
        0x3fec6000
        0x3ffc8000    # 1.9726562f
        0x400a4000    # 2.1601562f
        0x401a9000
        0x403c3000
        0x4083a800
    .end array-data

    :array_16d
    .array-data 4
        0x40451000
        0x401e2000
        0x400bf000
        0x3ffce000
        0x3fe7a000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbb8000    # 1.4648438f
        0x3fbe8000    # 1.4882812f
        0x3fc74000
        0x3fd56000
        0x3fe74000
        0x3ffc6000
        0x400c6000
        0x40200000    # 2.5f
        0x40498000    # 3.1484375f
    .end array-data

    :array_16e
    .array-data 4
        0x40269000
        0x40112000
        0x4000c000    # 2.0117188f
        0x3fe7e000
        0x3fd06000
        0x3fbc2000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf6000
        0x3fbc8000    # 1.4726562f
        0x3fd06000
        0x3fe70000    # 1.8046875f
        0x3fffe000    # 1.9990234f
        0x40119000
        0x4029c000    # 2.6523438f
    .end array-data

    :array_16f
    .array-data 4
        0x40180000    # 2.375f
        0x40074000
        0x3ff0a000
        0x3fd5a000
        0x3fbc6000
        0x3fabc000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab6000
        0x3fbbe000
        0x3fd4c000
        0x3fef4000
        0x40075000
        0x401ba000
    .end array-data

    :array_170
    .array-data 4
        0x40114000
        0x40002000
        0x3fe30000    # 1.7734375f
        0x3fc62000
        0x3faf2000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5a000
        0x3fe1e000
        0x40001000    # 2.0009766f
        0x40126000
    .end array-data

    :array_171
    .array-data 4
        0x400d7000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7a000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbb8000    # 1.4648438f
        0x3fda0000    # 1.703125f
        0x3ff88000    # 1.9414062f
        0x400de000
    .end array-data

    :array_172
    .array-data 4
        0x400c3000
        0x3ff76000
        0x3fd7a000
        0x3fb90000    # 1.4453125f
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa48000
        0x3fb8a000
        0x3fd6e000
        0x3ff4a000
        0x400cc000    # 2.1992188f
    .end array-data

    :array_173
    .array-data 4
        0x400cc000    # 2.1992188f
        0x3ff9e000
        0x3fda6000
        0x3fbc0000    # 1.46875f
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f848000    # 1.0351562f
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbc000
        0x3fd9a000
        0x3ff7a000
        0x400df000
    .end array-data

    :array_174
    .array-data 4
        0x4010b000
        0x4000b000
        0x3fe26000
        0x3fc4c000
        0x3fade000
        0x3f9f4000
        0x3f932000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fa000
        0x3face000
        0x3fc46000
        0x3fe24000
        0x3fff6000
        0x40124000    # 2.2851562f
    .end array-data

    :array_175
    .array-data 4
        0x4018f000
        0x40077000
        0x3ff0a000
        0x3fd3c000
        0x3fba4000
        0x3fa9e000
        0x3f9fe000
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa0000    # 1.328125f
        0x3fb98000    # 1.4492188f
        0x3fd32000
        0x3fee4000
        0x40064000    # 2.0976562f
        0x401a2000
    .end array-data

    :array_176
    .array-data 4
        0x40239000
        0x4010d000
        0x40006000
        0x3fe72000
        0x3fcec000
        0x3fbae000
        0x3fada000
        0x3fa6e000
        0x3fa4c000
        0x3fa74000
        0x3fade000
        0x3fba2000
        0x3fce0000    # 1.609375f
        0x3fe60000    # 1.796875f
        0x3fff8000    # 1.9960938f
        0x4010e000
        0x40275000
    .end array-data

    :array_177
    .array-data 4
        0x40383000
        0x401be000
        0x400b5000
        0x3ffd8000    # 1.9804688f
        0x3fe7a000
        0x3fd34000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba6000
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5a000
        0x3ffb6000
        0x400bc000    # 2.1835938f
        0x401ef000
        0x4042e000
    .end array-data

    :array_178
    .array-data 4
        0x4063c000
        0x402fc000    # 2.7460938f
        0x4018e000
        0x4009c000
        0x3ffd8000    # 1.9804688f
        0x3fec0000    # 1.84375f
        0x3fde4000
        0x3fd56000
        0x3fd2a000
        0x3fd56000
        0x3fdde000
        0x3feb2000
        0x3ffbc000
        0x40094000    # 2.1445312f
        0x40192000
        0x40348000    # 2.8203125f
        0x40729000
    .end array-data

    :array_179
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_17a
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_17b
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_17c
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_17d
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_17e
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_17f
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_180
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_181
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_182
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_183
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_184
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_185
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_186
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_187
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_188
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_189
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_18a
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_18b
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_18c
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_18d
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_18e
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_18f
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_190
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_191
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_192
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_193
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_194
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_195
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_196
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_197
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_198
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_199
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_19a
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_19b
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_19c
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_19d
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_19e
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_19f
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_1a0
    .array-data 4
        0x407f8000    # 3.9921875f
        0x40388000    # 2.8828125f
        0x40190000    # 2.390625f
        0x400a6000
        0x3ffd8000    # 1.9804688f
        0x3fec8000    # 1.8476562f
        0x3fe04000
        0x3fd88000    # 1.6914062f
        0x3fd66000
        0x3fd92000
        0x3fe0c000
        0x3fec6000
        0x3ffc8000    # 1.9726562f
        0x400a4000    # 2.1601562f
        0x401a9000
        0x403c3000
        0x4083a800
    .end array-data

    :array_1a1
    .array-data 4
        0x40451000
        0x401e2000
        0x400bf000
        0x3ffce000
        0x3fe7a000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbb8000    # 1.4648438f
        0x3fbe8000    # 1.4882812f
        0x3fc74000
        0x3fd56000
        0x3fe74000
        0x3ffc6000
        0x400c6000
        0x40200000    # 2.5f
        0x40498000    # 3.1484375f
    .end array-data

    :array_1a2
    .array-data 4
        0x40269000
        0x40112000
        0x4000c000    # 2.0117188f
        0x3fe7e000
        0x3fd06000
        0x3fbc2000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf6000
        0x3fbc8000    # 1.4726562f
        0x3fd06000
        0x3fe70000    # 1.8046875f
        0x3fffe000    # 1.9990234f
        0x40119000
        0x4029c000    # 2.6523438f
    .end array-data

    :array_1a3
    .array-data 4
        0x40180000    # 2.375f
        0x40074000
        0x3ff0a000
        0x3fd5a000
        0x3fbc6000
        0x3fabc000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab6000
        0x3fbbe000
        0x3fd4c000
        0x3fef4000
        0x40075000
        0x401ba000
    .end array-data

    :array_1a4
    .array-data 4
        0x40114000
        0x40002000
        0x3fe30000    # 1.7734375f
        0x3fc62000
        0x3faf2000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5a000
        0x3fe1e000
        0x40001000    # 2.0009766f
        0x40126000
    .end array-data

    :array_1a5
    .array-data 4
        0x400d7000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7a000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbb8000    # 1.4648438f
        0x3fda0000    # 1.703125f
        0x3ff88000    # 1.9414062f
        0x400de000
    .end array-data

    :array_1a6
    .array-data 4
        0x400c3000
        0x3ff76000
        0x3fd7a000
        0x3fb90000    # 1.4453125f
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa48000
        0x3fb8a000
        0x3fd6e000
        0x3ff4a000
        0x400cc000    # 2.1992188f
    .end array-data

    :array_1a7
    .array-data 4
        0x400cc000    # 2.1992188f
        0x3ff9e000
        0x3fda6000
        0x3fbc0000    # 1.46875f
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f848000    # 1.0351562f
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbc000
        0x3fd9a000
        0x3ff7a000
        0x400df000
    .end array-data

    :array_1a8
    .array-data 4
        0x4010b000
        0x4000b000
        0x3fe26000
        0x3fc4c000
        0x3fade000
        0x3f9f4000
        0x3f932000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fa000
        0x3face000
        0x3fc46000
        0x3fe24000
        0x3fff6000
        0x40124000    # 2.2851562f
    .end array-data

    :array_1a9
    .array-data 4
        0x4018f000
        0x40077000
        0x3ff0a000
        0x3fd3c000
        0x3fba4000
        0x3fa9e000
        0x3f9fe000
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa0000    # 1.328125f
        0x3fb98000    # 1.4492188f
        0x3fd32000
        0x3fee4000
        0x40064000    # 2.0976562f
        0x401a2000
    .end array-data

    :array_1aa
    .array-data 4
        0x40239000
        0x4010d000
        0x40006000
        0x3fe72000
        0x3fcec000
        0x3fbae000
        0x3fada000
        0x3fa6e000
        0x3fa4c000
        0x3fa74000
        0x3fade000
        0x3fba2000
        0x3fce0000    # 1.609375f
        0x3fe60000    # 1.796875f
        0x3fff8000    # 1.9960938f
        0x4010e000
        0x40275000
    .end array-data

    :array_1ab
    .array-data 4
        0x40383000
        0x401be000
        0x400b5000
        0x3ffd8000    # 1.9804688f
        0x3fe7a000
        0x3fd34000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba6000
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5a000
        0x3ffb6000
        0x400bc000    # 2.1835938f
        0x401ef000
        0x4042e000
    .end array-data

    :array_1ac
    .array-data 4
        0x4063c000
        0x402fc000    # 2.7460938f
        0x4018e000
        0x4009c000
        0x3ffd8000    # 1.9804688f
        0x3fec0000    # 1.84375f
        0x3fde4000
        0x3fd56000
        0x3fd2a000
        0x3fd56000
        0x3fdde000
        0x3feb2000
        0x3ffbc000
        0x40094000    # 2.1445312f
        0x40192000
        0x40348000    # 2.8203125f
        0x40729000
    .end array-data

    :array_1ad
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_1ae
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_1af
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_1b0
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_1b1
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_1b2
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_1b3
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_1b4
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_1b5
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_1b6
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_1b7
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_1b8
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_1b9
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_1ba
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_1bb
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_1bc
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_1bd
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_1be
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_1bf
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_1c0
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_1c1
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_1c2
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_1c3
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_1c4
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_1c5
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_1c6
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_1c7
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_1c8
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_1c9
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_1ca
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_1cb
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_1cc
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_1cd
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_1ce
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_1cf
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_1d0
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_1d1
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_1d2
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_1d3
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data

    :array_1d4
    .array-data 4
        0x407f8000    # 3.9921875f
        0x40388000    # 2.8828125f
        0x40190000    # 2.390625f
        0x400a6000
        0x3ffd8000    # 1.9804688f
        0x3fec8000    # 1.8476562f
        0x3fe04000
        0x3fd88000    # 1.6914062f
        0x3fd66000
        0x3fd92000
        0x3fe0c000
        0x3fec6000
        0x3ffc8000    # 1.9726562f
        0x400a4000    # 2.1601562f
        0x401a9000
        0x403c3000
        0x4083a800
    .end array-data

    :array_1d5
    .array-data 4
        0x40451000
        0x401e2000
        0x400bf000
        0x3ffce000
        0x3fe7a000
        0x3fd56000
        0x3fc76000
        0x3fbe4000
        0x3fbb8000    # 1.4648438f
        0x3fbe8000    # 1.4882812f
        0x3fc74000
        0x3fd56000
        0x3fe74000
        0x3ffc6000
        0x400c6000
        0x40200000    # 2.5f
        0x40498000    # 3.1484375f
    .end array-data

    :array_1d6
    .array-data 4
        0x40269000
        0x40112000
        0x4000c000    # 2.0117188f
        0x3fe7e000
        0x3fd06000
        0x3fbc2000
        0x3faf2000
        0x3fa84000
        0x3fa6e000
        0x3fa90000    # 1.3203125f
        0x3faf6000
        0x3fbc8000    # 1.4726562f
        0x3fd06000
        0x3fe70000    # 1.8046875f
        0x3fffe000    # 1.9990234f
        0x40119000
        0x4029c000    # 2.6523438f
    .end array-data

    :array_1d7
    .array-data 4
        0x40180000    # 2.375f
        0x40074000
        0x3ff0a000
        0x3fd5a000
        0x3fbc6000
        0x3fabc000
        0x3fa0e000
        0x3f996000
        0x3f96a000
        0x3f9a0000    # 1.203125f
        0x3fa18000    # 1.2617188f
        0x3fab6000
        0x3fbbe000
        0x3fd4c000
        0x3fef4000
        0x40075000
        0x401ba000
    .end array-data

    :array_1d8
    .array-data 4
        0x40114000
        0x40002000
        0x3fe30000    # 1.7734375f
        0x3fc62000
        0x3faf2000
        0x3fa0e000
        0x3f94c000
        0x3f8c4000
        0x3f89a000
        0x3f8c8000    # 1.0976562f
        0x3f948000    # 1.1601562f
        0x3fa00000    # 1.25f
        0x3fae2000
        0x3fc5a000
        0x3fe1e000
        0x40001000    # 2.0009766f
        0x40126000
    .end array-data

    :array_1d9
    .array-data 4
        0x400d7000
        0x3ff8e000
        0x3fda8000    # 1.7070312f
        0x3fbc4000
        0x3fa7a000
        0x3f98c000
        0x3f8c2000
        0x3f84e000
        0x3f82a000
        0x3f852000
        0x3f8be000
        0x3f984000
        0x3fa70000    # 1.3046875f
        0x3fbb8000    # 1.4648438f
        0x3fda0000    # 1.703125f
        0x3ff88000    # 1.9414062f
        0x400de000
    .end array-data

    :array_1da
    .array-data 4
        0x400c3000
        0x3ff76000
        0x3fd7a000
        0x3fb90000    # 1.4453125f
        0x3fa50000    # 1.2890625f
        0x3f954000
        0x3f88a000
        0x3f81a000
        0x3f800000    # 1.0f
        0x3f826000
        0x3f890000    # 1.0703125f
        0x3f952000
        0x3fa48000
        0x3fb8a000
        0x3fd6e000
        0x3ff4a000
        0x400cc000    # 2.1992188f
    .end array-data

    :array_1db
    .array-data 4
        0x400cc000    # 2.1992188f
        0x3ff9e000
        0x3fda6000
        0x3fbc0000    # 1.46875f
        0x3fa74000
        0x3f980000    # 1.1875f
        0x3f8b2000
        0x3f842000
        0x3f81e000
        0x3f848000    # 1.0351562f
        0x3f8b2000
        0x3f97c000
        0x3fa6e000
        0x3fbbc000
        0x3fd9a000
        0x3ff7a000
        0x400df000
    .end array-data

    :array_1dc
    .array-data 4
        0x4010b000
        0x4000b000
        0x3fe26000
        0x3fc4c000
        0x3fade000
        0x3f9f4000
        0x3f932000
        0x3f8b6000
        0x3f88e000
        0x3f8b6000
        0x3f934000
        0x3f9fa000
        0x3face000
        0x3fc46000
        0x3fe24000
        0x3fff6000
        0x40124000    # 2.2851562f
    .end array-data

    :array_1dd
    .array-data 4
        0x4018f000
        0x40077000
        0x3ff0a000
        0x3fd3c000
        0x3fba4000
        0x3fa9e000
        0x3f9fe000
        0x3f97c000
        0x3f950000    # 1.1640625f
        0x3f980000    # 1.1875f
        0x3f9fc000
        0x3faa0000    # 1.328125f
        0x3fb98000    # 1.4492188f
        0x3fd32000
        0x3fee4000
        0x40064000    # 2.0976562f
        0x401a2000
    .end array-data

    :array_1de
    .array-data 4
        0x40239000
        0x4010d000
        0x40006000
        0x3fe72000
        0x3fcec000
        0x3fbae000
        0x3fada000
        0x3fa6e000
        0x3fa4c000
        0x3fa74000
        0x3fade000
        0x3fba2000
        0x3fce0000    # 1.609375f
        0x3fe60000    # 1.796875f
        0x3fff8000    # 1.9960938f
        0x4010e000
        0x40275000
    .end array-data

    :array_1df
    .array-data 4
        0x40383000
        0x401be000
        0x400b5000
        0x3ffd8000    # 1.9804688f
        0x3fe7a000
        0x3fd34000
        0x3fc3c000
        0x3fbae000
        0x3fb80000    # 1.4375f
        0x3fba6000
        0x3fc38000    # 1.5273438f
        0x3fd2c000
        0x3fe5a000
        0x3ffb6000
        0x400bc000    # 2.1835938f
        0x401ef000
        0x4042e000
    .end array-data

    :array_1e0
    .array-data 4
        0x4063c000
        0x402fc000    # 2.7460938f
        0x4018e000
        0x4009c000
        0x3ffd8000    # 1.9804688f
        0x3fec0000    # 1.84375f
        0x3fde4000
        0x3fd56000
        0x3fd2a000
        0x3fd56000
        0x3fdde000
        0x3feb2000
        0x3ffbc000
        0x40094000    # 2.1445312f
        0x40192000
        0x40348000    # 2.8203125f
        0x40729000
    .end array-data

    :array_1e1
    .array-data 4
        0x407e8000    # 3.9765625f
        0x403b3000
        0x401d4000    # 2.4570312f
        0x400f3000
        0x4003d000
        0x3ff4e000
        0x3fe88000    # 1.8164062f
        0x3fe06000
        0x3fdda000
        0x3fe0a000
        0x3fe8e000
        0x3ff52000
        0x40031000
        0x400ed000
        0x401e4000    # 2.4726562f
        0x403ea000
        0x4083a800
    .end array-data

    :array_1e2
    .array-data 4
        0x4046a000
        0x4021c000    # 2.5273438f
        0x4010b000
        0x40031000
        0x3fefe000
        0x3fdc8000    # 1.7226562f
        0x3fcde000
        0x3fc42000
        0x3fc12000
        0x3fc46000
        0x3fcdc000
        0x3fdcc000
        0x3fef6000
        0x40026000
        0x40104000    # 2.2539062f
        0x4022f000
        0x404b1000
    .end array-data

    :array_1e3
    .array-data 4
        0x40293000
        0x40153000
        0x40054000    # 2.0820312f
        0x3fefc000
        0x3fd70000    # 1.6796875f
        0x3fc22000
        0x3fb40000    # 1.40625f
        0x3face000
        0x3fab4000
        0x3fadc000
        0x3fb48000    # 1.4101562f
        0x3fc26000
        0x3fd72000
        0x3fee6000
        0x4003d000
        0x4014f000
        0x402c4000    # 2.6914062f
    .end array-data

    :array_1e4
    .array-data 4
        0x401b8000    # 2.4296875f
        0x400bb000
        0x3ff8a000
        0x3fdc6000
        0x3fc20000    # 1.515625f
        0x3fb0a000
        0x3fa4e000
        0x3f9ce000
        0x3f9a0000    # 1.203125f
        0x3f9d8000    # 1.2304688f
        0x3fa5a000
        0x3fb06000
        0x3fc0e000
        0x3fdba000
        0x3ff66000
        0x400a9000
        0x401e6000
    .end array-data

    :array_1e5
    .array-data 4
        0x4014b000
        0x40043000
        0x3fe9e000
        0x3fcbe000
        0x3fb40000    # 1.40625f
        0x3fa4c000
        0x3f976000
        0x3f8e2000
        0x3f8b6000
        0x3f8e4000
        0x3f972000
        0x3fa3a000
        0x3fb2e000
        0x3fcb8000    # 1.5898438f
        0x3fe88000    # 1.8164062f
        0x40038000
        0x4015b000
    .end array-data

    :array_1e6
    .array-data 4
        0x40106000
        0x3fffe000    # 1.9990234f
        0x3fe06000
        0x3fc12000
        0x3fabe000
        0x3f9c0000    # 1.21875f
        0x3f8de000
        0x3f85c000
        0x3f832000
        0x3f85e000
        0x3f8d6000
        0x3f9b4000
        0x3fab2000
        0x3fc0a000
        0x3fe02000
        0x3ffec000
        0x40110000    # 2.265625f
    .end array-data

    :array_1e7
    .array-data 4
        0x400ed000
        0x3ffd6000
        0x3fdd2000
        0x3fbd6000
        0x3fa8a000
        0x3f980000    # 1.1875f
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82e000
        0x3f8a8000    # 1.0820312f
        0x3f97c000
        0x3fa86000
        0x3fbd4000
        0x3fdce000
        0x3ffb2000
        0x40100000    # 2.25f
    .end array-data

    :array_1e8
    .array-data 4
        0x400f4000    # 2.2382812f
        0x3fffa000
        0x3fe00000    # 1.75f
        0x3fc04000
        0x3faae000
        0x3f9aa000
        0x3f8c6000
        0x3f84a000
        0x3f822000
        0x3f852000
        0x3f8cc000
        0x3f9a8000
        0x3faac000
        0x3fc04000
        0x3fdfc000
        0x3ffe6000
        0x40115000
    .end array-data

    :array_1e9
    .array-data 4
        0x4013a000
        0x40044000    # 2.0664062f
        0x3fe88000    # 1.8164062f
        0x3fc98000    # 1.5742188f
        0x3fb1c000
        0x3fa22000
        0x3f954000
        0x3f8ca000
        0x3f8a0000    # 1.078125f
        0x3f8cc000
        0x3f958000
        0x3fa2e000
        0x3fb10000    # 1.3828125f
        0x3fc96000
        0x3fe8c000
        0x40032000
        0x40163000
    .end array-data

    :array_1ea
    .array-data 4
        0x401c1000
        0x400b4000    # 2.1757812f
        0x3ff70000
        0x3fd92000
        0x3fbe8000    # 1.4882812f
        0x3fae0000    # 1.359375f
        0x3fa2e000
        0x3f9a8000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa34000
        0x3fae4000
        0x3fbe2000
        0x3fd92000
        0x3ff54000
        0x4009e000
        0x401e2000
    .end array-data

    :array_1eb
    .array-data 4
        0x40265000
        0x4014c000    # 2.3242188f
        0x40043000
        0x3fee2000
        0x3fd50000    # 1.6640625f
        0x3fbfc000
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab4000
        0x3fb22000
        0x3fbf4000
        0x3fd3e000
        0x3fece000
        0x40039000
        0x4014f000
        0x402ad000
    .end array-data

    :array_1ec
    .array-data 4
        0x40398000    # 2.8984375f
        0x401f8000    # 2.4921875f
        0x40101000
        0x40031000
        0x3fef0000    # 1.8671875f
        0x3fd96000
        0x3fc94000
        0x3fbf6000
        0x3fbc2000
        0x3fbf2000
        0x3fc92000
        0x3fd96000
        0x3fed2000
        0x40020000    # 2.03125f
        0x40106000
        0x4022a000
        0x40462000
    .end array-data

    :array_1ed
    .array-data 4
        0x4062f000
        0x40331000
        0x401dc000
        0x400f0000    # 2.234375f
        0x40035000
        0x3ff40000    # 1.90625f
        0x3fe58000
        0x3fdbe000
        0x3fd88000    # 1.6914062f
        0x3fdc2000
        0x3fe58000
        0x3ff3c000
        0x4002d000
        0x400ec000
        0x401e0000    # 2.46875f
        0x40388000    # 2.8828125f
        0x4075a000
    .end array-data

    :array_1ee
    .array-data 4
        0x407f8000    # 3.9921875f
        0x403b7000
        0x401cf000
        0x400ea000
        0x4002d000
        0x3ff32000
        0x3fe68000    # 1.8007812f
        0x3fde8000    # 1.7382812f
        0x3fdbe000
        0x3fdf0000    # 1.7421875f
        0x3fe74000
        0x3ff3c000
        0x40026000
        0x400e7000
        0x401e2000
        0x403e9000
        0x4083c000    # 4.1171875f
    .end array-data

    :array_1ef
    .array-data 4
        0x40477000
        0x4021b000
        0x40108000    # 2.2578125f
        0x4002a000
        0x3feea000
        0x3fdb6000
        0x3fcca000
        0x3fc2e000
        0x3fc02000
        0x3fc38000    # 1.5273438f
        0x3fcca000
        0x3fdb8000
        0x3feea000
        0x40020000    # 2.03125f
        0x40102000
        0x40230000    # 2.546875f
        0x404b1000
    .end array-data

    :array_1f0
    .array-data 4
        0x4029f000
        0x4015b000
        0x40058000    # 2.0859375f
        0x3fefc000
        0x3fd6e000
        0x3fc14000
        0x3fb34000
        0x3fac2000
        0x3faac000
        0x3fad0000    # 1.3515625f
        0x3fb3e000
        0x3fc1e000
        0x3fd70000    # 1.6796875f
        0x3fee8000    # 1.8632812f
        0x4003f000
        0x40158000    # 2.3359375f
        0x402cb000
    .end array-data

    :array_1f1
    .array-data 4
        0x401c8000
        0x400c7000
        0x3ff9a000
        0x3fdcc000
        0x3fc20000    # 1.515625f
        0x3fb06000
        0x3fa46000
        0x3f9c8000    # 1.2226562f
        0x3f998000    # 1.1992188f
        0x3f9d2000
        0x3fa54000
        0x3fb00000    # 1.375f
        0x3fc0e000
        0x3fdc0000    # 1.71875f
        0x3ff6c000
        0x400b2000
        0x401f5000
    .end array-data

    :array_1f2
    .array-data 4
        0x4015c000    # 2.3398438f
        0x40050000    # 2.078125f
        0x3feb0000    # 1.8359375f
        0x3fcc4000
        0x3fb44000
        0x3fa4c000
        0x3f974000
        0x3f8e0000    # 1.109375f
        0x3f8b4000
        0x3f8e2000
        0x3f96e000
        0x3fa38000    # 1.2773438f
        0x3fb2e000
        0x3fcbc000
        0x3fe96000
        0x40042000
        0x40169000
    .end array-data

    :array_1f3
    .array-data 4
        0x4011c000    # 2.2773438f
        0x40010000    # 2.015625f
        0x3fe1e000
        0x3fc20000    # 1.515625f
        0x3fac2000
        0x3f9c0000    # 1.21875f
        0x3f8dc000
        0x3f858000    # 1.0429688f
        0x3f832000
        0x3f85c000
        0x3f8d4000
        0x3f9b6000
        0x3fab4000
        0x3fc10000    # 1.5078125f
        0x3fe10000    # 1.7578125f
        0x40001000    # 2.0009766f
        0x40121000
    .end array-data

    :array_1f4
    .array-data 4
        0x40100000    # 2.25f
        0x3fff2000
        0x3fde6000
        0x3fbe2000
        0x3fa90000    # 1.3203125f
        0x3f982000
        0x3f8a0000    # 1.078125f
        0x3f820000    # 1.015625f
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a4000
        0x3f97a000
        0x3fa88000    # 1.3164062f
        0x3fbda000
        0x3fdd8000    # 1.7304688f
        0x3ffca000
        0x40112000
    .end array-data

    :array_1f5
    .array-data 4
        0x4010c000    # 2.2617188f
        0x4000f000
        0x3fe1a000
        0x3fc14000
        0x3fab6000
        0x3f9ae000
        0x3f8c6000
        0x3f84a000
        0x3f824000
        0x3f850000    # 1.0390625f
        0x3f8ca000
        0x3f9a6000
        0x3fab0000    # 1.3359375f
        0x3fc0c000
        0x3fe0a000
        0x40001000    # 2.0009766f
        0x40125000
    .end array-data

    :array_1f6
    .array-data 4
        0x40154000    # 2.3320312f
        0x40056000
        0x3fea4000
        0x3fcaa000
        0x3fb28000    # 1.3945312f
        0x3fa28000    # 1.2695312f
        0x3f958000
        0x3f8ce000
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa30000    # 1.2734375f
        0x3fb14000
        0x3fca0000    # 1.578125f
        0x3fe9c000
        0x4003f000
        0x40170000    # 2.359375f
    .end array-data

    :array_1f7
    .array-data 4
        0x401d9000
        0x400c8000    # 2.1953125f
        0x3ff8c000
        0x3fda6000
        0x3fbf4000
        0x3fae6000
        0x3fa30000    # 1.2734375f
        0x3f9aa000
        0x3f978000    # 1.1835938f
        0x3f9ac000
        0x3fa32000
        0x3fae2000
        0x3fbe4000
        0x3fd9a000
        0x3ff62000
        0x400a8000    # 2.1640625f
        0x401ee000
    .end array-data

    :array_1f8
    .array-data 4
        0x40280000    # 2.625f
        0x4015e000
        0x40050000    # 2.078125f
        0x3fef8000
        0x3fd58000    # 1.6679688f
        0x3fc00000    # 1.5f
        0x3fb1e000
        0x3faac000
        0x3fa88000    # 1.3164062f
        0x3fab0000    # 1.3359375f
        0x3fb1e000
        0x3fbf2000
        0x3fd3e000
        0x3fed4000
        0x40040000    # 2.0625f
        0x40155000
        0x402b6000
    .end array-data

    :array_1f9
    .array-data 4
        0x403ad000
        0x4020a000
        0x4010b000
        0x40039000
        0x3fef4000
        0x3fd96000
        0x3fc90000    # 1.5703125f
        0x3fbf2000
        0x3fbbe000
        0x3fbec000
        0x3fc8a000
        0x3fd8e000
        0x3fecc000
        0x40020000    # 2.03125f
        0x40106000
        0x4022f000
        0x40461000
    .end array-data

    :array_1fa
    .array-data 4
        0x40644000    # 3.5664062f
        0x4033c000    # 2.8085938f
        0x401e2000
        0x400f3000
        0x40035000
        0x3ff36000
        0x3fe4a000
        0x3fdb2000
        0x3fd7a000
        0x3fdb0000    # 1.7109375f
        0x3fe46000
        0x3ff2c000
        0x40026000
        0x400e6000
        0x401e1000
        0x40388000    # 2.8828125f
        0x4075d000
    .end array-data

    :array_1fb
    .array-data 4
        0x406bb000
        0x402d9000
        0x40134000    # 2.3007812f
        0x40074000
        0x3ffb0000    # 1.9609375f
        0x3feac000
        0x3fe02000
        0x3fd8e000
        0x3fd6e000
        0x3fd9e000
        0x3fe14000
        0x3feca000
        0x3ffba000
        0x40080000    # 2.125f
        0x40152000
        0x40321000
        0x40749000
    .end array-data

    :array_1fc
    .array-data 4
        0x4039a000
        0x40182000
        0x40096000
        0x3ffb0000    # 1.9609375f
        0x3fe68000    # 1.8007812f
        0x3fd52000
        0x3fc7e000
        0x3fbf2000
        0x3fbca000
        0x3fbfc000
        0x3fc86000
        0x3fd66000
        0x3fe80000    # 1.8125f
        0x3ffc0000    # 1.96875f
        0x400a1000
        0x401ab000
        0x403eb000
    .end array-data

    :array_1fd
    .array-data 4
        0x401f8000    # 2.4921875f
        0x400e3000
        0x3fffe000    # 1.9990234f
        0x3fe74000
        0x3fd04000
        0x3fbc8000    # 1.4726562f
        0x3fafe000
        0x3fa98000
        0x3fa86000
        0x3faaa000
        0x3fb0e000
        0x3fbde000
        0x3fd1c000
        0x3fe82000
        0x40000000    # 2.0f
        0x400f6000
        0x40237000
    .end array-data

    :array_1fe
    .array-data 4
        0x40142000
        0x4006d000
        0x3ff16000
        0x3fd60000    # 1.671875f
        0x3fbce000
        0x3fac8000    # 1.3476562f
        0x3fa18000    # 1.2617188f
        0x3f9a8000
        0x3f980000    # 1.1875f
        0x3f9b6000
        0x3fa2e000
        0x3fad8000    # 1.3554688f
        0x3fbd8000
        0x3fd72000
        0x3ff14000
        0x40069000
        0x40189000
    .end array-data

    :array_1ff
    .array-data 4
        0x400fb000
        0x4000e000
        0x3fe48000    # 1.7851562f
        0x3fc74000
        0x3fb06000
        0x3fa18000    # 1.2617188f
        0x3f94e000
        0x3f8c8000    # 1.0976562f
        0x3f8a2000
        0x3f8cc000
        0x3f956000
        0x3fa1e000
        0x3fb0e000
        0x3fc88000    # 1.5664062f
        0x3fe56000
        0x40010000    # 2.015625f
        0x40124000    # 2.2851562f
    .end array-data

    :array_200
    .array-data 4
        0x400c9000
        0x3ffb2000
        0x3fdc6000
        0x3fbde000
        0x3fa94000
        0x3f99a000
        0x3f8c2000
        0x3f84c000
        0x3f826000
        0x3f854000
        0x3f8ca000
        0x3f9a6000
        0x3fa9a000
        0x3fbec000
        0x3fddc000
        0x3ffc4000
        0x400e8000    # 2.2265625f
    .end array-data

    :array_201
    .array-data 4
        0x400b2000
        0x3ff86000
        0x3fd96000
        0x3fbac000
        0x3fa68000    # 1.3007812f
        0x3f964000
        0x3f88c000
        0x3f818000
        0x3f800000    # 1.0f
        0x3f82c000
        0x3f8a0000    # 1.078125f
        0x3f972000
        0x3fa78000    # 1.3085938f
        0x3fbbc000
        0x3fdaa000
        0x3ff88000    # 1.9414062f
        0x400d6000
    .end array-data

    :array_202
    .array-data 4
        0x400b8000    # 2.1796875f
        0x3ffae000
        0x3fdc2000
        0x3fbd8000
        0x3fa88000    # 1.3164062f
        0x3f98c000
        0x3f8b0000    # 1.0859375f
        0x3f840000    # 1.03125f
        0x3f820000    # 1.015625f
        0x3f84a000
        0x3f8be000
        0x3f99c000
        0x3fa9e000
        0x3fbec000
        0x3fdd8000    # 1.7304688f
        0x3ffb8000    # 1.9648438f
        0x400ea000
    .end array-data

    :array_203
    .array-data 4
        0x400f5000
        0x40014000    # 2.0195312f
        0x3fe44000
        0x3fc60000    # 1.546875f
        0x3faec000
        0x3f9fa000
        0x3f938000    # 1.1523438f
        0x3f8b8000
        0x3f892000
        0x3f8ba000
        0x3f942000
        0x3fa18000    # 1.2617188f
        0x3faf8000    # 1.3710938f
        0x3fc76000
        0x3fe64000
        0x40017000
        0x4012e000
    .end array-data

    :array_204
    .array-data 4
        0x40159000
        0x40072000
        0x3ff12000
        0x3fd3e000
        0x3fbaa000
        0x3faae000
        0x3fa02000
        0x3f98c000
        0x3f964000
        0x3f998000    # 1.1992188f
        0x3fa12000
        0x3fabe000
        0x3fbba000
        0x3fd5e000
        0x3ff18000    # 1.8867188f
        0x40070000    # 2.109375f
        0x40193000
    .end array-data

    :array_205
    .array-data 4
        0x401df000
        0x400ee000
        0x3fffc000
        0x3fe7e000
        0x3fcfe000
        0x3fbb8000    # 1.4648438f
        0x3faee000
        0x3fa8a000
        0x3fa6a000
        0x3fa96000
        0x3fafa000
        0x3fbc4000
        0x3fd02000
        0x3fe84000
        0x4000a000
        0x40101000
        0x40232000
    .end array-data

    :array_206
    .array-data 4
        0x402e2000
        0x40177000
        0x4009f000
        0x3ffd0000    # 1.9765625f
        0x3fe86000
        0x3fd42000
        0x3fc58000    # 1.5429688f
        0x3fbc8000    # 1.4726562f
        0x3fb9a000
        0x3fbc8000    # 1.4726562f
        0x3fc58000    # 1.5429688f
        0x3fd4c000
        0x3fe78000    # 1.8085938f
        0x3ffcc000
        0x400b4000    # 2.1757812f
        0x401b8000    # 2.4296875f
        0x403ae000
    .end array-data

    :array_207
    .array-data 4
        0x4052b000
        0x40278000    # 2.6171875f
        0x40154000    # 2.3320312f
        0x4008c000    # 2.1367188f
        0x3ffde000
        0x3fed8000    # 1.8554688f
        0x3fe04000
        0x3fd7e000
        0x3fd4a000
        0x3fd80000    # 1.6875f
        0x3fe0c000
        0x3fedc000
        0x3ffde000
        0x40094000    # 2.1445312f
        0x4016c000    # 2.3554688f
        0x402e0000    # 2.71875f
        0x40664000
    .end array-data
.end method
