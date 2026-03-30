.class public final Lric;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0401a8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0401b8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lric;->a:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lric;->b:[I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static varargs a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p3, p4}, Lric;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static/range {p0 .. p5}, Lric;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const-string v1, "Theme.AppCompat"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-static {p0, v0, v1}, Lric;->f(Landroid/content/Context;[ILjava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lric;->a:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p2, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->AxEIIGTNleIyuIf:Ljava/lang/String;

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

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-static {p0, p1, p2}, Lric;->f(Landroid/content/Context;[ILjava/lang/String;)V

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lric;->b:[I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7f040378

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const/4 p3, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lrhz;->b:[I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    if-eq p2, p3, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p1, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    const/16 p3, 0x12

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    iget p2, p1, Landroid/util/TypedValue;->type:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lric;->b(Landroid/content/Context;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Landroid/util/TypedValue;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, v0, p1, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p2, 0x0

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

.method public static varargs d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    aget p1, p5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    if-eq p1, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    if-ne p0, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    array-length v1, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

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

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_18
    invoke-virtual {p0, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_10

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    sget-object v0, Lrhz;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_27
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    :goto_28
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f040377

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0, v1}, Lqqy;->l(Landroid/content/Context;IZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private static f(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "The style on this component requires your app theme to be "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, " (or a descendant)."

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2, p1, v0}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    nop

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
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
