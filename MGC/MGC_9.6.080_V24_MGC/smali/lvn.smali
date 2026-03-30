.class public final Llvn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Llvn;->b:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p1, p0, Llvn;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Llvn;->c:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    aput-object v4, v3, v6

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2
    const/4 v5, 0x0

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

    :goto_3
    aput-object v1, v3, v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Llvn;->a:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Llvn;->b:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "pitch"

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
    aput-object v1, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v5, 0x234

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    const-string v1, "azimuth"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-array v3, v3, [Ljava/lang/Object;

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

    :goto_15
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_31

    nop

    :goto_18
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    const/16 v5, 0x235

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    const/16 v5, 0x236

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    aput-object p0, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v3, 0x2

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

    :goto_25
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "roll"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_29
    aput-object v1, v3, v5

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

    nop

    :goto_2a
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lrsr;

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

    :goto_2c
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    iget p0, p0, Llvn;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2e
    const/4 v6, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v5, 0x232

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    :goto_31
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    aput-object v4, v3, v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    const/16 v5, 0x233

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_34
    aput-object v4, v3, v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method
