.class final Lgdo;
.super Lqka;
.source "PG"


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private final b:F

.field private final f:F


# direct methods
.method public constructor <init>(Ljava/nio/FloatBuffer;FF)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    nop

    nop

    goto/32 :goto_a

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Lqka;-><init>(ILqgr;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x3

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

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lqhd;->h:Lqgt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

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

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    iput p3, p0, Lgdo;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    iput p2, p0, Lgdo;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lgdo;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(ILjava/nio/ByteBuffer;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    rem-int/lit8 v0, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1d

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    :goto_6
    iget v3, p0, Lgdo;->b:F

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lgdo;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_b
    move v3, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr p1, p0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    const v1, 0x4

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

    :goto_e
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

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

    :goto_f
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lgdo;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_7

    nop

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
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lgdo;->f:F

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_25
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
