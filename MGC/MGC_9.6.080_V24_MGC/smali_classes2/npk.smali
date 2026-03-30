.class public final Lnpk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnpk;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lnpk;->a:D

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    iput-wide v0, p0, Lnpk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p1, Lnpk;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iget-wide v0, p1, Lnpk;->c:D

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p1, Lnpk;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iput-wide v0, p0, Lnpk;->d:D

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v0, p1, Lnpk;->b:D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lnpk;->c:D

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b([F)V
    .locals 12

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x9

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    mul-float/2addr v0, v6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3
    mul-float/2addr v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    aput v11, p1, v10

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v3, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p0, 0xf

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x7

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_d
    const/16 p0, 0xc

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_e
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-float v8, v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    aput v3, p1, p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    const/4 v10, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p0, 0xe

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_15
    aput p0, p1, v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float v6, v4, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    aput v2, p1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    add-float v1, v3, v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aput v6, p1, v10

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-float v3, v2, v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    const/16 p0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-float p0, v7, v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    aput v1, p1, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput v10, p1, v9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput v9, p1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v2, p0, Lnpk;->c:D

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_25
    double-to-float p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_28
    add-float v10, v6, v8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float v5, v4, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    iget-wide v0, p0, Lnpk;->a:D

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    aput v11, p1, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    const/16 v0, 0xa

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    double-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_30
    const/16 p0, 0xb

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_31
    aput v11, p1, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_32
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_33
    sub-float v2, v7, v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_34
    add-float v6, v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sub-float v11, v9, v4

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_36
    aput v11, p1, p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    mul-float v9, v3, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_39
    mul-float/2addr v6, p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3a
    add-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    nop

    :goto_3c
    add-float v4, v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3e
    add-float/2addr v9, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3f
    sub-float/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_40
    const/16 p0, 0x8

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    sub-float v6, v7, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_42
    double-to-float v2, v2

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_43
    iget-wide v1, p0, Lnpk;->b:D

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    aput v11, p1, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-float v6, v0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_46
    iget-wide v3, p0, Lnpk;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    aput v7, p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aput v6, p1, v8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_49
    aput v11, p1, v10

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aput v11, p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4b
    sub-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
