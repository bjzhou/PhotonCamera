.class public Landroid/support/v8/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field mAniso:F

.field mMag:Landroid/support/v8/renderscript/Sampler$Value;

.field mMin:Landroid/support/v8/renderscript/Sampler$Value;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapT:Landroid/support/v8/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sget-object p1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

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
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

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

    :goto_4
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

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

    nop

    :goto_5
    sget-object p1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    sget-object p1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public static ZuxVPjbFMfXHrQgd(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static gnfHLquIvicfzvXq(Landroid/support/v8/renderscript/RenderScript;IIIIIF)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0xb

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

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

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

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nSamplerCreate(IIIIIF)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Sampler;
    .locals 8

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->ZuxVPjbFMfXHrQgd(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget v7, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v6, v0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    new-instance v2, Landroid/support/v8/renderscript/Sampler;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, v2, Landroid/support/v8/renderscript/Sampler;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iput p0, v2, Landroid/support/v8/renderscript/Sampler;->mAniso:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static/range {v1 .. v7}, Landroid/support/v8/renderscript/Sampler$Builder;->gnfHLquIvicfzvXq(Landroid/support/v8/renderscript/RenderScript;IIIIIF)J

    move-result-wide v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    iget v5, v0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    iget v3, v0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, v2, Landroid/support/v8/renderscript/Sampler;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    iget p0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iput-object v0, v2, Landroid/support/v8/renderscript/Sampler;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, v2, Landroid/support/v8/renderscript/Sampler;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    iget v2, v0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2, v0, v1, v3}, Landroid/support/v8/renderscript/Sampler;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, v0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

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

    :goto_23
    iget-object v1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, v2, Landroid/support/v8/renderscript/Sampler;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object v2

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAnisotropy(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Invalid value"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    cmpl-float v0, p1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    if-gez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop
.end method

.method public setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const-string p1, "Invalid value"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_7
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

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

    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const-string p1, "Invalid value"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p1, v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->PGzHATsEQ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-ne p1, v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_1

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Invalid value"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
