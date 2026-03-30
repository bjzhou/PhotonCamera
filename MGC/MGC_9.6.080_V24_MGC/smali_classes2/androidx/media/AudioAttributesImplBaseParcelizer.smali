.class public Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static read(Lekx;)Landroidx/media/AudioAttributesImplBase;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

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

    :goto_10
    iput p0, v0, Landroidx/media/AudioAttributesImplBase;->d:I

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

    :goto_11
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->a:I

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

    :goto_15
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result v1

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

    :goto_16
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->d:I

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

    :goto_17
    const v1, 0x4

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

    :goto_18
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x2

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

    :goto_1b
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

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
.end method

.method public static write(Landroidx/media/AudioAttributesImplBase;Lekx;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const/4 v1, 0x3

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    invoke-virtual {p1, p0, v0}, Lekx;->h(II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    nop

    goto/32 :goto_13

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    goto/32 :goto_d

    nop

    nop

    :goto_15
    const v0, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
