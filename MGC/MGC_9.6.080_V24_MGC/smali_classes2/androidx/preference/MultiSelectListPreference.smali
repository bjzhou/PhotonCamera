.class public Landroidx/preference/MultiSelectListPreference;
.super Landroidx/preference/DialogPreference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1, v1}, Ldsw;->P(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v0, v1}, Ldsw;->I(Landroid/content/Context;II)I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/4 p1, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    const v0, 0x7f040237

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const v1, 0x1010091

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    sget-object p0, Leem;->e:[I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1, p2}, Ldsw;->P(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    goto/32 :goto_c

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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
.end method


# virtual methods
.method protected final b(Landroid/content/res/TypedArray;I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v0, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_8
    aget-object v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x3

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

    :goto_e
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    array-length p2, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

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
.end method
