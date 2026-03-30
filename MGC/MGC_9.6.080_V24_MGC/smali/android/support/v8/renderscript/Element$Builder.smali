.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    goto/32 :goto_7

    nop

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
    new-array p1, p1, [I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array v0, p1, [Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

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

    nop

    :goto_b
    new-array v0, p1, [Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ItUqDLMDUgBoIRQv(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static LcNfyrsjUbPHdXCJ(Landroid/support/v8/renderscript/RenderScript;)V
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static MFYCYSphTfFFzRiZ(Landroid/support/v8/renderscript/RenderScript;[J[Ljava/lang/String;[I)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QcLGepkoGzrgySsi(Ljava/lang/Object;ILjava/lang/Object;II)V
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

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static VpoZxGBvpSEEIYMn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static coGQtWdtaZrGAdsG(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static jqBylYbNHLQNVLnq(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static kQOidBSDcwdULThl(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static tKJcHvwuUWLJsfRW(Landroid/support/v8/renderscript/Element$Builder;Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static vRPWCpmfbMDmSNfU(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static xugHKVdJCztWTomy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->tKJcHvwuUWLJsfRW(Landroid/support/v8/renderscript/Element$Builder;Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v6, v4, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    new-array v5, v4, [Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    const-string v0, "#padding_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    aput-object p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_8
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_9
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v4, v1, v2}, Landroid/support/v8/renderscript/Element$Builder;->QcLGepkoGzrgySsi(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "Array size cannot be less than 1."

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

    :goto_e
    invoke-static {v0, v1, v6, v1, v2}, Landroid/support/v8/renderscript/Element$Builder;->jqBylYbNHLQNVLnq(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    aput p3, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_16
    iput-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3c

    nop

    nop

    :goto_1a
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v4, v4, [I

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

    :goto_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object p2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    if-eq v0, v4, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    array-length v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    iput v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v6, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v1, v5, v1, v0}, Landroid/support/v8/renderscript/Element$Builder;->coGQtWdtaZrGAdsG(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v4, v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    iget-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    iput v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    nop

    :goto_31
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_37
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->VpoZxGBvpSEEIYMn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_39
    iput v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_13

    nop

    nop

    :goto_3c
    if-gtz p3, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_31

    nop

    nop

    :goto_3e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3f
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public create()Landroid/support/v8/renderscript/Element;
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    aput-wide v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v7, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [J

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v6, v7}, Landroid/support/v8/renderscript/Element$Builder;->MFYCYSphTfFFzRiZ(Landroid/support/v8/renderscript/RenderScript;[J[Ljava/lang/String;[I)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    new-array v6, v0, [Ljava/lang/String;

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

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    aget-object v3, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/Element$Builder;->LcNfyrsjUbPHdXCJ(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_e
    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v5, v0, [Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v1, v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

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

    :goto_1c
    invoke-static {v1, v2, v5, v2, v0}, Landroid/support/v8/renderscript/Element$Builder;->xugHKVdJCztWTomy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3, v4}, Landroid/support/v8/renderscript/Element$Builder;->kQOidBSDcwdULThl(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v2, v7, v2, v3}, Landroid/support/v8/renderscript/Element$Builder;->ItUqDLMDUgBoIRQv(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct/range {v1 .. v7}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    invoke-static {v1, v2, v6, v2, v3}, Landroid/support/v8/renderscript/Element$Builder;->vRPWCpmfbMDmSNfU(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
