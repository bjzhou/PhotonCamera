.class public Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static read(Lekx;)Landroidx/media/AudioAttributesImplApi21;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result p0

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

    :goto_2
    iget v1, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    check-cast v1, Landroid/media/AudioAttributes;

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

    :goto_d
    const/4 v2, 0x1

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_10
    const v1, 0xb

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1, v2}, Lekx;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    iput p0, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static write(Landroidx/media/AudioAttributesImplApi21;Lekx;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0, v1}, Lekx;->i(Landroid/os/Parcelable;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0, v0}, Lekx;->h(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

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

    :goto_6
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Landroidx/media/AudioAttributesImplApi21;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

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

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method
