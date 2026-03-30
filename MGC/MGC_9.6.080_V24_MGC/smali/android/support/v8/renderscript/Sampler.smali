.class public Landroid/support/v8/renderscript/Sampler;
.super Landroid/support/v8/renderscript/BaseObj;
.source "PG"


# instance fields
.field mAniso:F

.field mMag:Landroid/support/v8/renderscript/Sampler$Value;

.field mMin:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapT:Landroid/support/v8/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static AoXapOtHESFrJhpG(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CLAMP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->WgiCjOSjIJaaZKSf(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->CqHDpRmfzbNmqkMm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->mizzVjDxYRvYkGAi(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

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

    nop

    :goto_d
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->lzOhawSwKGOHVLqp(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_15
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->VgWINAckHkfJTawH(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    :goto_19
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

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

    nop

    :goto_4
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->VIrcMWpEOcVdFJGM(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    goto/32 :goto_14

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

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

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    :goto_10
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->XTfVpANBdMEqBPtL(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->NcIXVHrrQuLRBqga(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->VKNLGMecSPpuOYbd(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1

    nop

    nop

    :goto_15
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

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

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->vbIYxpfWcMZaZQiD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public static CLAMP_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->XFdGsrFBklPswWbi(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->dHGKPgTeeSkULaGC(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->KyQzVuKOTBbxLuhD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->EuOwnhzuZZLdMfqn(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->TkddEHDwPEAbdtGU(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CqHDpRmfzbNmqkMm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static DObqYwRzuJrbwnpu(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static EuOwnhzuZZLdMfqn(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static FHxJqTAHypFCTIwD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JohDUsKbIytYaDLU(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static KyQzVuKOTBbxLuhD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LINwnrPuSbXjpXbI(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

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

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->cmJbCRLfozMYJUVZ(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x11

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

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->bdaIYItOAGmwvLmk(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    const v0, 0x2

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

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_d
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->FHxJqTAHypFCTIwD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->epwMRWovorzLmHBd(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->ryWuJAGdLHFfAatK(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_16

    nop

    nop

    :goto_16
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->DObqYwRzuJrbwnpu(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->uAJGrgSOwraLSwrj(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->pQspeFOfHDVuwizD(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_9
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->ztWKuEBvaIqjUQxY(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

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

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->ixhxMtvqUDWZDpPa(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static NcIXVHrrQuLRBqga(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static PipZZyWibgdHFPnF(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static TkddEHDwPEAbdtGU(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static TwUQbZBEkPmGMusH(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static UmDkrNdwDqXKbawm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static VIrcMWpEOcVdFJGM(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static VKNLGMecSPpuOYbd(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static VgWINAckHkfJTawH(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static WFUbjcaBVRcqfhAU(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WRAP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->LINwnrPuSbXjpXbI(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->UmDkrNdwDqXKbawm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->yFbIKQCfLkONVUWg(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->exTBaZZUquVkTwcP(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->uwjMTVqnWMYLORJe(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

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

    :goto_12
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_13
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->ZnGENtJsbjddJlHJ(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

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

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->mMeYdRDCFgbwwOwq(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->PipZZyWibgdHFPnF(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->WFUbjcaBVRcqfhAU(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_11
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->lSWNsyAxIBULexQI(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static WRAP_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->TwUQbZBEkPmGMusH(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler;->JohDUsKbIytYaDLU(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->AoXapOtHESFrJhpG(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_16
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->ulpfUvsNkUgfEpat(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Sampler;->cwCYWitVymfFXvSm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WgiCjOSjIJaaZKSf(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static XFdGsrFBklPswWbi(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static XTfVpANBdMEqBPtL(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZnGENtJsbjddJlHJ(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static bdaIYItOAGmwvLmk(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static cmJbCRLfozMYJUVZ(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static cwCYWitVymfFXvSm(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dHGKPgTeeSkULaGC(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static epwMRWovorzLmHBd(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static exTBaZZUquVkTwcP(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static ixhxMtvqUDWZDpPa(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static lSWNsyAxIBULexQI(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static lzOhawSwKGOHVLqp(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mMeYdRDCFgbwwOwq(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static mizzVjDxYRvYkGAi(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pQspeFOfHDVuwizD(Landroid/support/v8/renderscript/Sampler$Builder;)Landroid/support/v8/renderscript/Sampler;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ryWuJAGdLHFfAatK(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static uAJGrgSOwraLSwrj(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static ulpfUvsNkUgfEpat(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static uwjMTVqnWMYLORJe(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static vbIYxpfWcMZaZQiD(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static yFbIKQCfLkONVUWg(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ztWKuEBvaIqjUQxY(Landroid/support/v8/renderscript/Sampler$Builder;Landroid/support/v8/renderscript/Sampler$Value;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Landroid/support/v8/renderscript/Sampler;->mAniso:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getMagnification()Landroid/support/v8/renderscript/Sampler$Value;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Sampler;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getMinification()Landroid/support/v8/renderscript/Sampler$Value;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Sampler;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

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
.end method

.method public getWrapS()Landroid/support/v8/renderscript/Sampler$Value;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Sampler;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getWrapT()Landroid/support/v8/renderscript/Sampler$Value;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Sampler;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

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
.end method
