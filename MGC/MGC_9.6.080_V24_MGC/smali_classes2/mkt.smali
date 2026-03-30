.class public final Lmkt;
.super Lmkp;
.source "PG"


# direct methods
.method public constructor <init>(Lptw;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-direct {p0, p1, v0}, Lmkp;-><init>(Lpty;[Ljava/lang/Enum;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lmks;->values()[Lmks;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lmkp;->a()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Lmks;Lmks;)I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    sub-long/2addr v0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lmkp;->g(Ljava/lang/Enum;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    long-to-int p0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p2}, Lmkp;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    div-long/2addr v0, p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const-wide/32 p0, 0xf4240

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
