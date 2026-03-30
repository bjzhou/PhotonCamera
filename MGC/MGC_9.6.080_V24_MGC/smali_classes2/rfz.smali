.class public final Lrfz;
.super Lrft;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ldwy;

.field private c:Landroid/view/Window;

.field private d:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lrfz;->a:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrfz;->c:Landroid/view/Window;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v1, p0, Lrfz;->d:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

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

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lqqy;->s(Landroid/view/Window;Z)V

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ldwy;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean p0, p0, Lrfz;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lrfz;->b:Ldwy;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, p0}, Lqqy;->s(Landroid/view/Window;Z)V

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    sub-int/2addr p0, v1

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

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ldwy;->d()I

    move-result v0

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v1, v0, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lrfz;->c:Landroid/view/Window;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lrfz;->b:Ldwy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/View;Ldwy;)V
    .locals 0

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p2, p0, Lrfz;->b:Ldwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lrfz;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lrgw;->k(I)Z

    move-result p1

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

    nop

    :goto_9
    move-object p1, p2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Lrkp;->h()Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lrgw;->k(I)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lrft;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_15
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->af(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ldvw;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

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

    :goto_1f
    iput-object p1, p0, Lrfz;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Lrgw;->b(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p2, p0, Lrfz;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lrfz;->23ce148e54b083367f51e25c7971761em(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final b(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lrfz;->23ce148e54b083367f51e25c7971761em(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lrfz;->23ce148e54b083367f51e25c7971761em(Landroid/view/View;)V

    goto/32 :goto_1

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
.end method

.method public final d(Landroid/view/Window;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    goto/16 :goto_18

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    :goto_4
    const/4 p1, 0x1

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

    :goto_5
    iget-object v0, p0, Lrfz;->c:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-direct {v0, p1, v1}, Lehs;-><init>(Landroid/view/Window;[B)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lehs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x0

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_12
    iget-object p1, v0, Lehs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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

    :goto_14
    invoke-interface {p1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    iput-boolean p1, p0, Lrfz;->d:Z

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    and-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lrfz;->c:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop
.end method
