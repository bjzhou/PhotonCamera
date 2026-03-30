.class public final Lmma;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljps;
.implements Ljpq;
.implements Ljon;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/Window;

.field private final c:Loyd;

.field private d:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/view/WindowInsetsController;IZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2}, Lmma;->g(I)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, p2}, Landroid/view/WindowInsetsController;->show(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p2}, Landroid/view/WindowInsetsController;->hide(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Loyd;Lowu;Lows;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmma;->b:Landroid/view/Window;

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

    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p2, p3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p2, p0, Lmma;->c:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p0, v0}, Lmdt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lmma;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lmdt;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Loxz;->a(Loyd;)Loyd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmma;->h()Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

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

    :goto_5
    invoke-interface {v0, p0, p0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_14

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    if-ne v1, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmma;->b:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, p0, Lmma;->d:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

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

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_13
    invoke-interface {v0, p1, p0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lmma;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

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

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cX()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lmma;->d:Z

    nop

    nop

    nop

    nop

    nop

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final cY()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmma;->e()V

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

    :goto_2
    iput-boolean v0, p0, Lmma;->d:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Lnzk;->aQ(Lnbe;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lmma;->b:Landroid/view/Window;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lmma;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v2, v3}, Lmma;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/view/WindowInsetsController;IZ)V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

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
    iget-object v1, p0, Lmma;->c:Loyd;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    check-cast v1, Lnbe;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    const/4 v3, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lmma;->b:Landroid/view/Window;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

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

    :goto_21
    invoke-direct {p0, v0, v2, v1}, Lmma;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/view/WindowInsetsController;IZ)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

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

    :goto_26
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmma;->f()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Lmma;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 v1, 0x2

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-interface {p0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lmma;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    :try_start_0
    iget-object v0, p0, Lmma;->b:Landroid/view/Window;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/view/Window;->isNavigationBarContrastEnforced()Z

    move-result v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lmma;->b:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lmma;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

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

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    iget-object v0, p0, Lmma;->b:Landroid/view/Window;

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lmma;->b:Landroid/view/Window;

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
.end method

.method public final g(I)Z
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lmma;->b:Landroid/view/Window;

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

    :goto_c
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final h()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmma;->b:Landroid/view/Window;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    and-int/lit8 p0, p0, 0x10

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

    :goto_a
    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result p0

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

.method public final s(Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lmma;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lmma;->e()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
