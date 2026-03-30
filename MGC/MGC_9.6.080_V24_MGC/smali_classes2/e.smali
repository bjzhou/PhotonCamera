.class public Le;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :goto_1
    const-string p0, "SELECTORDINAL"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const-string p0, "SIMPLE"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "NONE"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_d

    nop

    nop

    :goto_8
    const-string p0, "SELECT"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "PLURAL"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "null"

    nop

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

    :goto_b
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_2

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "CHOICE"

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

    nop
.end method

.method public static b(I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    instance-of p2, p0, Landroid/view/View;

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

    :goto_6
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lme;->a()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    instance-of p2, p0, Lme;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_10
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static synthetic d(Lkl;Lka;)Landroid/view/View;
    .locals 8

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

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

    :goto_1
    if-lt v3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v6, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    move v4, v7

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

    :goto_4
    goto :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    :goto_7
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lkl;->am()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v5}, Lka;->b(Landroid/view/View;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v4, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

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

    :goto_e
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    move-object v1, v5

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lka;->k()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    if-lt v6, v4, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    :goto_13
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    nop

    :goto_16
    invoke-virtual {p0, v3}, Lkl;->ay(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_4
    goto/32 :goto_21

    nop

    :goto_18
    sub-int/2addr v6, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_1f

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v5}, Lka;->d(Landroid/view/View;)I

    move-result v6

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

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    div-int/lit8 v7, v7, 0x2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    move v7, v4

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    :goto_20
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v1

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    return-object v1

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lka;->j()I

    move-result v2

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

    :goto_28
    move v7, v6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-le v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x4

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

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-gt v0, p0, :cond_1

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x1e0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    goto/32 :goto_22

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

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v0, p0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    if-ge v0, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x258

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0x168

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    if-le p0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 p0, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 p0, 0x280

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    return p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-le v1, p0, :cond_6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_6
    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x7f050000

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lle;->e()Lle;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, p1}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static h(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public static i(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static j(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const-string p1, ": "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    :try_start_0
    move-object v0, p1

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_11
    sget-object p1, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->ziquIKnUKbZvpF:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p2, "CXCP"

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

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    const-string v1, "Failed to set ["

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

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static k(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    const v0, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_12
    invoke-static {p0, v1, v0}, Le;->j(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1b

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

    nop
.end method

.method public static l(Ljava/lang/String;)Lpx;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lpx;->a:Ljava/util/Set;

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already defined!"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

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

    :goto_4
    invoke-direct {v0, p0}, Lpx;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    new-instance v0, Lpx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    sget-object v0, Lpx;->a:Ljava/util/Set;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static m(Landroid/view/Surface;Lqf;Lqe;Lqh;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;Ljava/lang/String;Lejk;)Lrh;
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lqf;->b:Lqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_38

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lqf;->a:Lqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_51

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    if-nez p8, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p1, p8}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    :goto_d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide p2, p3, Lqh;->a:J

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;->setStreamUseCase(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_2

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    const-string p3, "Failed to create an OutputConfiguration for "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_14
    iget p2, p2, Lqg;->a:I

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSensorPixelModeUsed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide p5, p3, Lqh;->a:J

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide p5, p2, Lqe;->a:J

    nop

    :try_start_3
    invoke-virtual {p1, p5, p6}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lqf;->a:Lqf;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lqf;->c:Lqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1d
    const-string p1, "non-null surface!"

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    const-class p0, Landroid/view/SurfaceHolder;

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-class p0, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    if-nez p0, :cond_5

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :goto_26
    goto/32 :goto_c

    nop

    nop

    :goto_27
    if-ne p7, p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_5
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p7, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    goto/16 :goto_51

    nop

    nop

    :goto_28
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    invoke-direct {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p2, :cond_8

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_8
    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    :goto_2d
    array-length p5, p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :catchall_4
    :goto_32
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string p2, "Unsupported OutputType: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :catchall_5
    :goto_35
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz p5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string p2, "CXCP"

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, p1}, Lrh;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto/32 :goto_41

    nop

    nop

    :goto_40
    check-cast p0, [J

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

    :goto_41
    return-object p0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_45
    if-lt p2, p5, :cond_b

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p10, p9}, Lejk;->c(Ljava/lang/String;)Lrp;

    move-result-object p0

    nop

    nop

    nop

    nop

    :try_start_6
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lrp;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz p0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_48
    cmp-long p5, p5, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gez p2, :cond_d

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_d
    goto/32 :goto_10

    nop

    nop

    :goto_4b
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez p2, :cond_e

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

    :cond_e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_50
    invoke-direct {p1, p5, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    :goto_51
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance p0, Lrh;

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getMaxSharedSurfaceCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    goto/32 :goto_3f

    nop

    nop

    :goto_53
    invoke-static {p1, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

    :goto_54
    check-cast p2, Lqg;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_56
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_57
    const/16 p0, 0x21

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_58
    aget-wide p7, p0, p2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop
.end method

.method public static synthetic n(Leur;Landroid/hardware/camera2/CameraDevice;Lqy;Lrkg;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, v0, p1, p2, p3}, Leur;->g(Lsd;Landroid/hardware/camera2/CameraDevice;Lqy;Lrkg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
.end method
