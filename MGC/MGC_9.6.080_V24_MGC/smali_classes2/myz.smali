.class public final Lmyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnbg;


# instance fields
.field private final a:Ltxm;

.field private b:Lcom/google/android/apps/camera/ui/views/ToggleUi;


# direct methods
.method constructor <init>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lmyz;-><init>(Ltxm;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Lppz;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lppz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    return-void

    nop

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
.end method

.method public constructor <init>(Ltxm;)V
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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmyz;->a:Ltxm;

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


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lmyz;->a:Ltxm;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

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

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lnzk;->al(ZLtxm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final synthetic d(Landroid/view/View$OnClickListener;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lmyz;->e(Landroid/view/View$OnClickListener;IZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a(Lnbh;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop
.end method

.method public final synthetic dP(Lnbe;Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method

.method public final e(Landroid/view/View$OnClickListener;IZ)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    move v0, v1

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    :goto_c
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p3, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_b

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    :goto_11
    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    goto/32 :goto_24

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    :goto_17
    iget-object p3, p3, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

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

    :goto_18
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p3, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/view/View;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    goto :goto_15

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g(I)V

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v2}, Lnzk;->al(ZLtxm;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lmyz;->a:Ltxm;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p3, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    move v0, v1

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

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

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v2}, Lnzk;->al(ZLtxm;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    :goto_10
    goto :goto_3

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_17
    iget-object v2, p0, Lmyz;->a:Ltxm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/ViewStub;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lmyz;->a()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

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

    :goto_e
    const v0, 0x1f

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lnzk;->s(Landroid/view/View;)I

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lmyz;->b:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    check-cast p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7f0803fd

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop
.end method
