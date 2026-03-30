.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearInlineSliderPreference;
.super Landroidx/preference/Preference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Loba;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    const v0, 0x10

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

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

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

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x7f04036d

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_22
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    const/4 p2, 0x0

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

    :goto_26
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    const/4 p1, 0x3

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

    :goto_28
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_13

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
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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
.end method
