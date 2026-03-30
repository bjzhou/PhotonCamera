.class public final Ldxn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:J

.field public h:F

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    iput-wide v0, p0, Ldxn;->f:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    iput-wide v0, p0, Ldxn;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v0, -0x1

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

    :goto_e
    iput-wide v0, p0, Ldxn;->g:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const-wide/high16 v0, -0x8000000000000000L

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
.end method


# virtual methods
.method public final a(J)F
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-static {p1, v3, v6}, Ldxo;->a(FFF)F

    move-result p0

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

    :goto_3
    iget-wide v0, p0, Ldxn;->e:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    mul-float/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Ldxn;->a:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    cmp-long v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9
    add-float/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    cmp-long v2, p1, v4

    nop

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

    :goto_b
    iget v0, p0, Ldxn;->h:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    cmp-long v2, v4, v6

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    long-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float p0, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1d

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

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    sub-long/2addr p1, v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    long-to-float p1, p1

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    div-float/2addr p1, p0

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

    :goto_17
    iget p0, p0, Ldxn;->i:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    const/high16 p1, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    :goto_1a
    iget-wide v4, p0, Ldxn;->g:J

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-float v1, v6, v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    div-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    goto :goto_25

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, v3, v6}, Ldxo;->a(FFF)F

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    sub-long/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    if-ltz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_22
    const-wide/16 v6, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    if-gez v2, :cond_1

    nop

    nop

    goto/32 :goto_25

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

    :goto_24
    return v1

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    if-ltz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_28
    return p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

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

    :goto_2c
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
