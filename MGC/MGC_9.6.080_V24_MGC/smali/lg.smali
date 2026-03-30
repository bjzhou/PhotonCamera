.class public final Llg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    iput-boolean v0, p0, Llg;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Llg;->b:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Llg;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Llg;->h:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Llg;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const/high16 v1, -0x80000000

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Llg;->e:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Llg;->d:I

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

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Llg;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    move p1, p2

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_6
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Llg;->c:I

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_b
    move v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p2, v3, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v3, v4

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    move v2, v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Llg;->b:I

    nop

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_10

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    iput-boolean v0, p0, Llg;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    const/high16 v3, -0x80000000

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

    :goto_19
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_24

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

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    if-ne p1, v3, :cond_5

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    move v5, p2

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_21

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v3, :cond_7

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    iput v5, p0, Llg;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3

    nop

    nop

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    move v3, v2

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

    :goto_2f
    if-ne v0, v4, :cond_8

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    iget-boolean v1, p0, Llg;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    iput p2, p0, Llg;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_33
    move v4, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2a

    nop

    nop

    :goto_35
    goto/32 :goto_a

    nop

    nop
.end method
