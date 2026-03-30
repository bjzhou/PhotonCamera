.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "PG"


# instance fields
.field final a:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    sget v1, Leen;->a:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    iget v3, p0, Landroidx/preference/SeekBarPreference;->g:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, p0, Landroidx/preference/SeekBarPreference;->g:I

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

    :goto_6
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v0, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    move v0, p2

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lt v0, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    const/4 p0, 0x2

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

    :goto_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iput p2, p0, Landroidx/preference/SeekBarPreference;->a:I

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

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    :goto_17
    const/16 v0, 0x64

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    if-ne v0, v3, :cond_2

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

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, p0, Landroidx/preference/SeekBarPreference;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput p2, p0, Landroidx/preference/SeekBarPreference;->h:I

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x7f0405bd

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/preference/SeekBarPreference;->g:I

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_2c
    sub-int/2addr v3, p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Leem;->i:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final b(Landroid/content/res/TypedArray;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
