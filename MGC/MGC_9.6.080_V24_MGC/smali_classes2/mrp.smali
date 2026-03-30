.class public final Lmrp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Lrss;

.field public final f:Lfwv;

.field public final g:Lhut;

.field private final h:Ltud;

.field private final i:Lnel;

.field private final j:I

.field private final k:I

.field private final l:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Lfwv;Landroidx/wear/ambient/AmbientDelegate;Landroid/content/Context;Lhut;Ltud;Lrss;Lowu;Lnel;)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2
    new-array p2, v2, [Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_5
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const p3, 0x7f0c0022

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const p5, 0x7f0c001d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    new-instance p3, Loyc;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    iput-object p1, p0, Lmrp;->f:Lfwv;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lmrp;->l:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lmrp;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    new-instance p2, Lmok;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Lmrp;->g:Lhut;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p3, p4, Lhut;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p3, p2, p7}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lmrp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p6, p0, Lmrp;->e:Lrss;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p2}, Lrgw;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

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

    :goto_1b
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_29

    nop

    nop

    :goto_21
    invoke-direct {p2, p0, p4}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p3, p3, Lnuj;->g:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput p2, p0, Lmrp;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_27
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lmrp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    invoke-direct {p3, p2}, Loyc;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    iput p2, p0, Lmrp;->j:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p6}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Lmrp;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p6}, Lrss;->h()Z

    move-result p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p3, Lnuj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_33
    aput-object p3, p2, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_36
    const/4 p4, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p8, p0, Lmrp;->i:Lnel;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object p5, p0, Lmrp;->h:Ltud;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Loxv;

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

    :goto_1
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lmrp;->k:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :goto_5
    add-int/2addr v0, p0

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

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lmrp;->j:I

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_d
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lmrp;->h:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget v0, p0, Lmrp;->j:I

    nop

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
.end method

.method public final b(Z)V
    .locals 2

    goto/32 :goto_8

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
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    invoke-virtual {v0, p1, v1}, Lnuj;->a(ZZ)V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lmrp;->g:Lhut;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

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

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmrp;->e:Lrss;

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

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_10
    invoke-virtual {p0}, Lmrp;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lnuj;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lhut;->g(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lmrp;->e:Lrss;

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

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnel;->g:Lneh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lixe;->f(Lixf;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnel;->l:Lixe;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmrp;->i:Lnel;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget v0, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 8

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnuj;->o:Lnbh;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
    aput v0, v6, v5

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

    :goto_6
    iget-object p1, p0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Lnuj;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    :goto_9
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

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

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v7, v3, [F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object v4

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

    :goto_15
    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lnuj;->k:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const-wide/16 v6, 0x12c

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

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

    :goto_1b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnuj;->k:Landroid/animation/AnimatorSet;

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

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lnuj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    const v1, 0x7f070548

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput-object v0, v6, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    iput-object v4, p0, Lnuj;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_29
    aput v0, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aput v0, v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    new-array v4, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lmrp;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_30
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    new-array v6, v6, [Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :goto_34
    goto/32 :goto_7

    nop

    nop

    :goto_35
    iget-object v2, p0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_36
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :goto_38
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmrp;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3b
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3d
    const v0, 0xd

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3e
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3f
    goto :goto_34

    nop

    nop

    :goto_40
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v4, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aput-object v2, v6, v3

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

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_44
    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_3e

    nop

    nop

    :goto_45
    const v1, 0x16

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

    :goto_46
    new-array v6, v3, [F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_48
    iget-object v1, p0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

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

    :goto_49
    goto/32 :goto_23

    nop

    :goto_4a
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lnuj;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4c
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean v0, p0, Lnuj;->p:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4e
    aput-object v1, v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lnuj;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lfwe;
    .locals 5

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v1, v0}, Lhut;->l(ZZ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmrp;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

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

    :goto_7
    check-cast v0, Loxv;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Lhut;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lmrp;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lmrp;->a()I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lfwe;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v4, Lfwe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    and-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p0}, Lhut;->n(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lfwf;->b()Lfwe;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v3, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

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

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Lfwe;->close()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1a

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x14

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

    :goto_1a
    invoke-virtual {v2, v4}, Lhut;->j(Z)V

    :goto_1b
    goto/32 :goto_36

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lmrp;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Lnuj;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_21
    iget-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_22
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_23
    iget-object v0, v0, Lhut;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    iget-object v4, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_25
    iput-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_28
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lnuj;

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

    nop

    :goto_2b
    goto :goto_29

    nop

    nop

    :goto_2c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lmrp;->g:Lhut;

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

    nop

    :goto_2e
    check-cast v2, Lhut;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, v2}, Lnuj;->f(ZZ)V

    goto/32 :goto_9

    nop

    nop

    :goto_32
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lmrp;->g:Lhut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_35
    invoke-virtual {v0, v3}, Lnuj;->h(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, v3, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_37
    check-cast v2, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Lfwf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_39
    iget-object v3, p0, Lmrp;->l:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_3a
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    iput-object v4, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    xor-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3f
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    invoke-virtual {p0, v1, v1}, Lhut;->l(ZZ)V

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmrp;->g:Lhut;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iget-object v0, p0, Lmrp;->e:Lrss;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmrp;->e:Lrss;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v1}, Lnuj;->f(ZZ)V

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x15

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lnuj;

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

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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
.end method
