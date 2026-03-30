.class public Lcom/google/android/apps/camera/ui/hotshot/HotshotController;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A:Z

.field public B:Lnac;

.field public C:Lnac;

.field public D:J

.field public E:J

.field public F:Landroid/graphics/Rect;

.field public G:J

.field public H:Ljava/util/List;

.field public I:Lnai;

.field public J:Z

.field public K:J

.field public L:I

.field public M:Z

.field public N:J

.field public O:Lneh;

.field public P:Z

.field public final Q:Lmhf;

.field public final R:Lmzm;

.field public final S:Lkyf;

.field public final T:Llad;

.field private final U:Ljava/util/List;

.field private final V:Loyd;

.field private final W:Ljava/util/concurrent/ScheduledExecutorService;

.field private final X:Lpci;

.field private final Y:Loyn;

.field private final Z:Ljava/util/List;

.field private final aa:Landroid/hardware/SensorEventListener;

.field private final ab:Loyn;

.field private final ac:Lpdf;

.field private final ad:Lmzg;

.field private final ae:Ljdc;

.field private final af:Loyd;

.field private final ag:Z

.field private final ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Ljava/util/concurrent/ScheduledFuture;

.field private al:I

.field private am:J

.field private an:J

.field private ao:Landroid/view/View$AccessibilityDelegate;

.field private ap:I

.field private aq:I

.field private ar:Landroid/hardware/Sensor;

.field private as:I

.field private final at:Llyv;

.field private final au:Ljqb;

.field private final av:Lfwv;

.field private final aw:Lfdn;

.field public final c:Landroid/view/accessibility/AccessibilityManager;

.field public final d:Lhco;

.field public final e:Landroid/content/Context;

.field public final f:Lhvp;

.field public final g:Loyn;

.field public final h:Lnam;

.field public final i:Lowu;

.field public final j:Lncn;

.field public final k:Loyn;

.field public final l:Loyd;

.field public final m:Loyd;

.field public final n:Loyn;

.field public final o:Loyn;

.field public final p:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field public final q:Lnaa;

.field public final r:Lnab;

.field public final s:Loyd;

.field public final t:Ljdf;

.field public final u:Ljava/lang/Object;

.field public final v:Ljava/util/List;

.field public final w:Z

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:Z


# direct methods
.method private final 175bafa759041016accb75ef876de5d9m()Z
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    goto/16 :goto_23

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

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

    nop

    :goto_e
    invoke-virtual {p0}, Lhvp;->l()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lhco;->i()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_14
    if-gez p0, :cond_3

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

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr v3, p0

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_1d
    sget-object v4, Lnac;->h:Lnac;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    iget p0, p0, Lnaj;->c:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 p0, -0x3fc00000    # -3.0f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v4}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    const/high16 v3, 0x425c0000    # 55.0f

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_25
    cmpl-float p0, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    const v1, 0x13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lnai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    check-cast p0, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2c
    if-ne v1, v3, :cond_7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2e

    nop

    nop

    :goto_30
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_32
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_33
    check-cast v0, Loxv;

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

    :goto_34
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    :goto_36
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/high16 v3, 0x42280000    # 42.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 31a64958b42ce450c2ff67f49731e7c1m(Lnai;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Lnai;->a:Lryb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lryb;->size()I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_3
    invoke-virtual {v0}, Lryb;->size()I

    move-result v1

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

    :goto_4
    iget p0, p1, Lnai;->d:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    :goto_7
    add-int/lit8 p0, p0, 0x1

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

    :goto_8
    iget-object p0, p1, Lnai;->b:Lmze;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt p0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iget p0, p1, Lnai;->c:I

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

    :goto_d
    goto :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    iget-object v0, p1, Lnai;->a:Lryb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Lryb;->get(I)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 6a76c551e4658c5f4308c862164e4dd9m()V
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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

    nop

    nop

    nop

    nop

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

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aq:I

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

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ap:I

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
.end method

.method private final 7521e341d48b08f214d1dac0738f16d0m()Z
    .locals 7

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v6, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v4, v3

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Lhco;->i()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    move v3, v4

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v4, 0x40400000    # 3.0f

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_7
    iget-object v3, v3, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v3

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

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iget p0, p0, Lnaj;->c:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-virtual {p0, v5}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v4}, Lmzf;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    :goto_12
    invoke-virtual {v0, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    move v1, v2

    nop

    nop

    :goto_16
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lnai;->a:Lryb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v4, Lmzf;->c:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1d
    cmpg-float p0, p0, v4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v2

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lnaj;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

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

    :goto_22
    check-cast v0, Lnai;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v3, Lnaj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    move v3, v6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4a

    nop

    nop

    :goto_2c
    const/high16 v3, 0x40600000    # 3.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v3, 0x3e4ccccd    # 0.2f

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    :goto_30
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3}, Lhco;->i()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v3, :cond_6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    :goto_37
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_39
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4

    nop

    nop

    :goto_3e
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3f
    goto/16 :goto_2b

    nop

    :goto_40
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lhvp;->l()I

    move-result p0

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

    :goto_42
    if-ne p0, v0, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_43
    sget-object v5, Lnac;->a:Lnac;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_44
    if-lez p0, :cond_8

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v3, v3, Lmzd;->a:Lmzf;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v1, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw p0

    nop

    :goto_49
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop
.end method

.method private 7880b546a1b8a6b45f9b5d7d61b5dfe6m(Lnar;)V
    .locals 1

    goto/32 :goto_b

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lryb;->size()I

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto :goto_8

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
    invoke-virtual {p1}, Lnar;->a()Lryb;

    move-result-object v0

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

    :goto_5
    invoke-virtual {p1}, Lnar;->a()Lryb;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lryb;->size()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lt p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Lryb;->get(I)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lnar;->a()Lryb;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object p0, p1, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m(Lnai;)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Lmzf;->a()Z

    move-result v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v2, Lnaj;->a:Lmzd;

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
    iget-object v3, v3, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aq:I

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

    :goto_6
    check-cast v2, Lnaj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    :goto_9
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    :goto_a
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

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

    nop

    :goto_b
    iget-object v0, p1, Lnai;->a:Lryb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lryb;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lnaj;

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

    :goto_11
    iget v0, p1, Lnai;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

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

    :goto_14
    iget v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ap:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    const v1, 0xc

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

    :goto_16
    iget-object p1, p1, Lnai;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

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

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1

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

    :goto_21
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

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

    :goto_22
    iget-object p1, p1, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gt v0, v2, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_f

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    :goto_2a
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ap:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    if-lt v1, v0, :cond_4

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

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.apps.camera.ui.hotshot.HotshotController"

    nop

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

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Loyd;Lnam;Lmhf;Landroid/view/accessibility/AccessibilityManager;Lhoh;Llyv;Lhvp;Loyn;Lhco;Lmzm;Lkyf;Lngo;Ljava/util/concurrent/ScheduledExecutorService;Loyd;Loyd;Lfwv;Loyn;Llad;Loyn;Lncn;Loyn;Lfdn;Ljqb;Lowu;Loyn;Lpdf;Lnaa;Lnab;Loyd;Lmzg;Lixe;Ljdc;Lmae;Loyd;)V
    .locals 17

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_0
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->E:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3
    sget-object v16, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->D:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v15, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 p7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_8
    iput v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x1

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_a
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r:Lnab;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->s:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v5, p19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_d
    move-object/from16 v11, p22

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v1, p21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->af:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_10
    iget-object v3, v7, Lmzm;->a:Lmse;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    new-instance v15, Lmzq;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aq:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b5

    nop

    :cond_1
    goto/32 :goto_b4

    nop

    :goto_14
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ah:Z

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->J:Z

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {p6 .. p11}, Lmzr;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;Landroid/view/accessibility/AccessibilityManager;Lmae;Landroid/content/Context;Lixe;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->an:J

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v15}, Lrss;->c()Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1a
    new-instance v4, Lmok;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 p6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v8, p14

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1f
    const-wide v14, 0x7fffffffffffffffL

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v1, p10

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    :goto_22
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_25
    iput-object v8, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->W:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v6, v1, Lnam;->d:Loyn;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v4, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->e:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_2a
    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2b
    sget-object v3, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2c
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v5, p29

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2e
    const/4 v3, 0x1

    nop

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

    :goto_2f
    new-instance v1, Lhzb;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v2, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v15, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_32
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_33
    move-object/from16 v1, p12

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide/16 v14, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object/from16 v7, p11

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

    :goto_36
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v14, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_ae

    nop

    nop

    :goto_3a
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->am:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v3, Lhmv;->c:Lhmn;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v2, Lmok;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v1, Lmzr;

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

    :goto_3e
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v3, 0x14

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v3, Lmok;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_41
    sget-object v15, Lnac;->f:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-wide/16 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-boolean v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_44
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->V:Loyd;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_45
    move-object/from16 v1, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v16, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_47
    move-object/from16 v15, p4

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v5, p28

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_4a
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->K:J

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v15, v7, v1}, Lmzq;-><init>(Lmzm;Lngo;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v3, v15}, Lmse;->f(Lmsc;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_4f
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aa:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/16 v3, 0x13

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v14, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v5, p31

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_53
    move-object/from16 v9, p16

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v15, 0xa

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v6, Lhmv;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_57
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->F:Landroid/graphics/Rect;

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

    :goto_59
    iput-object v11, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Y:Loyn;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->X:Lpci;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v3, v4, v8}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_5c
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_5d
    move-object/from16 v5, p27

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5e
    iput v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5f
    iput-wide v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->N:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_83

    nop

    nop

    :goto_62
    sget-object v6, Lhmv;->b:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_63
    move-object/from16 v13, p33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->l:Loyd;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_65
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-object/from16 v5, p30

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_68
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6a
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->S:Lkyf;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static/range {v16 .. v16}, Lnai;->a(Lryb;)Lnai;

    move-result-object v3

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_6d
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ai:Z

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->v:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v1, Ller;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_70
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aw:Lfdn;

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_71
    iput-object v10, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->g:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_72
    const/4 v3, 0x0

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v4, p7

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_74
    iput-object v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_75
    move-object/from16 v1, p13

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_76
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v3, v0}, Lmzo;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_78
    new-instance v15, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_79
    iput v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->L:I

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_7a
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_7b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ab:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v1, v0, v3}, Lhzb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4f

    nop

    nop

    :goto_7e
    iput-object v13, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ae:Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_7f
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t:Ljdf;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_80
    iput-boolean v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ag:Z

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_81
    invoke-direct {v2, v0, v3}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_a3

    nop

    nop

    :goto_85
    move-object/from16 p9, p34

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/16 v7, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    move-object/from16 p8, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-object/from16 p11, p32

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iput-object v6, v15, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->k:Loyn;

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance v3, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8c
    move-object/from16 v6, p9

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v12, p25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object v14, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->H:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_90
    invoke-interface {v11, v3, v8}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v4, v3}, Llyv;->a(Llyp;)Loyn;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_92
    new-instance v14, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j:Lncn;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aj:Z

    nop

    nop

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

    :goto_96
    move-object/from16 v1, p17

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move-object/from16 v3, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move-object/from16 v5, p23

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_99
    iput-object v6, v5, Lhvp;->r:Loyd;

    nop

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

    :goto_9a
    iput-object v12, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->i:Lowu;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v5, v2, v8}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_9c
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->q:Lnaa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v1, v0, v2, v3, v6}, Ller;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v15, v1, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_9f
    move-object/from16 v5, p20

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move-object/from16 v14, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v1, p3

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->T:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_b5

    nop

    :goto_a4
    invoke-virtual {v15, v6}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct {v2, v0, v13, v3, v6}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    new-instance v3, Lmzo;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_a8
    new-instance v15, Loxv;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_a9
    move-object/from16 v15, p2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_aa
    invoke-interface {v10, v3, v12}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v3, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_ac
    sget v16, Lryb;->d:I

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

    :goto_ad
    new-instance v2, Lngp;

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

    :goto_ae
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->U:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_af
    move-object/from16 v14, p35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_b2
    iput-object v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b3
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_84

    nop

    :goto_b5
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_b6
    iput-object v9, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move-object/from16 v5, p8

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v1, v1, Lnam;->b:Lrss;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_b9
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->C:Lnac;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-direct {v4, v0, v7}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    new-instance v3, Lnao;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_be
    invoke-virtual/range {p17 .. p17}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->au:Ljqb;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    move-object/from16 p10, p1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_c2
    invoke-direct {v3, v0, v7}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    sget-object v3, Llyr;->q:Llze;

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_c4
    new-instance v1, Lmzp;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->av:Lfwv;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-boolean v15, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_c7
    invoke-direct {v3, v0, v6}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move-object/from16 v10, p18

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c9
    iput v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->y:I

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->M:Z

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_cb
    iput-object v7, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_cc
    invoke-direct {v15, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_cd
    sget-object v15, Lnac;->f:Lnac;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Q:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_cf
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_d0
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v15

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d1
    iput-boolean v3, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_d4
    move-object/from16 v2, p5

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v15, v6}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d6
    move-object/from16 v5, p24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_d7
    iput-object v15, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_d8
    iput v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ap:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v9, v3, v8}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_da
    iput-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_db
    move-object/from16 v5, p35

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_dc
    move-object/from16 v15, p6

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_dd
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v15}, Lrss;->h()Z

    move-result v16

    nop

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

    :goto_df
    if-ne v15, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_4
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_e0
    move-object/from16 v5, p26

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_e1
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-direct {v1, v0, v3}, Lmzp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v15, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    const/16 v7, 0x11

    nop

    goto/32 :goto_c2

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

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

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-array v2, v1, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->g:Loyn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Lryb;->k([Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

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

    :goto_11
    invoke-static {v1, v1, v0, v2}, Lnar;->b(IILandroid/graphics/Rect;Lryb;)Lnar;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public static final w(Ljava/util/List;II)V
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lnaj;

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

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    check-cast v0, Lnaj;

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
    invoke-virtual {v2}, Lmzc;->a()Lmzd;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v5, v0, Lnaj;->b:Lmze;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    new-instance v2, Lmzc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, v1}, Lmzc;-><init>(Lmzd;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v3 .. v8}, Lnaj;-><init>(Lmzd;Lmze;FLnas;Landroid/graphics/Rect;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    move-object v3, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lnaj;->a:Lmzd;

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

    :goto_d
    invoke-virtual {v2, p2}, Lmzc;->b(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    iget v6, v0, Lnaj;->c:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v7, v0, Lnaj;->d:Lnas;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    iget-object v8, v0, Lnaj;->e:Landroid/graphics/Rect;

    nop

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

    :goto_12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)Lnac;
    .locals 14

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_11a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_4
    iget-object v9, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-long/2addr v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_141

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_123

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_141

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_d
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_e
    if-ge v7, v1, :cond_1

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :cond_1
    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    :cond_2
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_14
    const/16 v7, 0xa

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lnac;->n:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_16
    if-eqz v8, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v11, v10, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_5
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_19d

    nop

    nop

    :goto_19
    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e8

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_141

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_155

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v7}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_20
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    :goto_22
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_23
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_8
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v8, v8, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    :cond_9
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_11a

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Lnac;->f:Lnac;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2f
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v8}, Lmze;->c()Z

    move-result v8

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_31
    move-object v1, v3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_113

    nop

    nop

    :goto_33
    iput v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v7}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_35
    iget v7, v0, Lnai;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_36
    if-ne v3, v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_c
    packed-switch v3, :pswitch_data_0

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_37
    iput-wide v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->an:J

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Lnai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_39
    if-nez v1, :cond_d

    nop

    goto/32 :goto_10f

    nop

    :cond_d
    :goto_3a
    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v7, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v7

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_3f
    sget-object v1, Lhvq;->e:Lhvq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_41
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    :cond_e
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v0, Lnac;->o:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v0, v6

    nop

    :goto_46
    goto/32 :goto_4f

    nop

    nop

    :goto_47
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_48
    move v0, v5

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :cond_10
    goto/32 :goto_193

    nop

    :goto_4a
    if-nez v1, :cond_11

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v1}, Lhvp;->j(Lhvq;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_144

    nop

    nop

    nop

    :goto_4e
    array-length v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->175bafa759041016accb75ef876de5d9m()Z

    move-result v1

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_50
    goto/16 :goto_174

    nop

    nop

    nop

    :goto_51
    :pswitch_0
    goto/32 :goto_173

    nop

    nop

    nop

    :goto_52
    if-eq v7, v8, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_2a

    nop

    nop

    :goto_53
    cmpg-float p1, p1, v1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v7}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_55
    iput-wide v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->an:J

    nop

    :goto_56
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v1, Lnac;->c:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_1b3

    nop

    nop

    :goto_59
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_5a
    new-instance v8, Lkzr;

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_5b
    goto/16 :goto_141

    nop

    :goto_5c
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object v0, Lnac;->f:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eq v0, v8, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v8, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_65
    const/high16 v3, 0x4f000000

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_66
    const-wide/16 v3, 0xbb8

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    cmp-long v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_68
    invoke-virtual {v0, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v0, [Lnak;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_31

    nop

    nop

    :goto_6d
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_c9

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v3, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_71
    check-cast v12, Lnaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v8, v9}, Lkzr;-><init>(I)V

    goto/32 :goto_3e

    nop

    nop

    :goto_73
    move v1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_17e

    nop

    nop

    :goto_77
    move v7, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v1, Lnac;->i:Lnac;

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_7b
    sget-object v0, Lnac;->a:Lnac;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-gtz p1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :cond_14
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-ne v6, v3, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_7e
    sget-object v3, Lhvq;->g:Lhvq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v1, :cond_16

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v13, v12, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_83
    if-lt v1, v7, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_16

    nop

    nop

    :goto_84
    cmpg-float v1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-wide v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->am:J

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_86
    iget-boolean v4, v1, Lnab;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1}, Lryb;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v7, v8}, Lmzf;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_89
    if-nez v4, :cond_18

    nop

    goto/32 :goto_187

    nop

    :cond_18
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v1, v3}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v1}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_8c
    if-nez v7, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_8e
    sget-object v0, Lnac;->g:Lnac;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-gez p1, :cond_1a

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_18

    nop

    nop

    :goto_90
    if-eqz v1, :cond_1b

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_91
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :goto_92
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_93
    sget-object v1, Lnac;->b:Lnac;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_94
    iget v7, v0, Lnai;->c:I

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_95
    invoke-interface {v7}, Lj$/util/stream/Stream;->count()J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->al:I

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_97
    if-eqz v1, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_1c
    goto/32 :goto_1a0

    nop

    nop

    :goto_98
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_99
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v0, v1}, Lnac;->a(Z)F

    move-result v0

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v1, Lnac;->a:Lnac;

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_9c
    cmpl-float v1, v1, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v1, v1, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_a2
    if-nez v3, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_a3
    if-nez v0, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez v7, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :cond_1f
    goto/32 :goto_ab

    nop

    nop

    :goto_a5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_19d

    nop

    :goto_a7
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_141

    nop

    :goto_a9
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_aa
    if-eqz v1, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    :cond_20
    goto/32 :goto_1b9

    nop

    nop

    :goto_ab
    iget v8, v0, Lnai;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_ac
    if-nez v3, :cond_21

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_21
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    cmpg-float v1, p1, v1

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_ae
    sget-object v1, Lnac;->l:Lnac;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7521e341d48b08f214d1dac0738f16d0m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_b0
    move-object v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v1, v7}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_b2
    cmpl-float v1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-ltz v1, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object v0, Lnac;->h:Lnac;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_b8
    if-ge v0, v1, :cond_23

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :cond_23
    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_b9
    if-eqz v1, :cond_24

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_12e

    nop

    nop

    :goto_ba
    iget-wide v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->an:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_bb
    invoke-virtual {v1, v3}, Lhvp;->j(Lhvq;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_bc
    sget-object v4, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_bd
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->6a76c551e4658c5f4308c862164e4dd9m()V

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_be
    if-nez v1, :cond_25

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_fa

    nop

    nop

    :goto_bf
    check-cast v8, Lnaj;

    nop

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

    nop

    :goto_c0
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c1
    sget-object v1, Lnac;->j:Lnac;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_c2
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-gtz v0, :cond_26

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_74

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_73

    nop

    nop

    :goto_c7
    sget-object v0, Lnac;->f:Lnac;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_46

    nop

    :goto_c9
    goto/32 :goto_45

    nop

    nop

    :goto_ca
    if-eqz v7, :cond_27

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v7, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_cc
    if-eq v7, v6, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_1a2

    nop

    nop

    :goto_cd
    iget v13, v13, Lmzd;->b:I

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    if-eqz v1, :cond_29

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_11e

    nop

    nop

    :goto_cf
    sget-object v3, Lnac;->f:Lnac;

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_d0
    invoke-virtual {v0, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    cmpl-float v1, v1, v3

    nop

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

    :goto_d3
    cmpg-float v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-boolean v4, v1, Lnab;->a:Z

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_1b2

    nop

    nop

    :goto_d6
    sget-object v0, Lnac;->m:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez v8, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    cmpg-float v3, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_d9
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v7, v8}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_db
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_33

    nop

    nop

    :goto_dd
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_de
    cmpl-float p1, p1, v1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v3}, Lnac;->ordinal()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_e0
    iget v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ap:I

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_e1
    const/high16 v2, -0x40800000    # -1.0f

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

    nop

    nop

    :goto_e2
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_e3
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->175bafa759041016accb75ef876de5d9m()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_e4
    sget-object v7, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v8, :cond_2b

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    :cond_2b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_e7
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-eqz v4, :cond_2c

    nop

    goto/32 :goto_3d

    nop

    :cond_2c
    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v1, v0}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_eb
    sget-object v0, Lnac;->h:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v1, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_ed
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    move v11, v5

    nop

    nop

    nop

    nop

    :goto_ef
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f0
    sget-object v0, Lnac;->f:Lnac;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_f1
    iget v8, v0, Lnai;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_f4
    sget-object v0, Lnac;->b:Lnac;

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget v8, v0, Lnai;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_f7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_f8
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_f9
    if-eq v8, v13, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_162

    nop

    nop

    nop

    :goto_fa
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_fb
    const/high16 v3, 0x40800000    # 4.0f

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    if-eqz v1, :cond_2e

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_3f

    nop

    nop

    :goto_fe
    if-nez v4, :cond_2f

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :cond_2f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-nez v8, :cond_30

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

    :cond_30
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v4, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_101
    goto/16 :goto_c6

    nop

    :goto_102
    goto/32 :goto_19a

    nop

    nop

    :goto_103
    sget-object v0, Lnac;->c:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v3, v5}, Lnac;->a(Z)F

    move-result v3

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_105
    cmp-long v1, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_106
    iget-wide v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->an:J

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_107
    iget v7, v0, Lnai;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_108
    sget-object v0, Lnac;->b:Lnac;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_109
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const-wide/16 v7, 0x7d0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    sget-object v0, Lnac;->e:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_10e
    move v5, v6

    nop

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-nez v0, :cond_32

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_111
    goto/16 :goto_32

    nop

    :goto_112
    goto/32 :goto_16d

    nop

    nop

    :goto_113
    iget-boolean v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_114
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-nez v1, :cond_33

    nop

    nop

    goto/32 :goto_159

    nop

    :cond_33
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_116
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_117
    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_118
    cmpg-float v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_119
    goto/16 :goto_141

    nop

    nop

    :goto_11a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    goto/16 :goto_fc

    nop

    nop

    nop

    :goto_11c
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r:Lnab;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_11e
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    const v0, 0x15

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v4, v3, Lhvp;->w:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_122
    if-eqz v7, :cond_34

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    :cond_34
    goto/32 :goto_e0

    nop

    nop

    :goto_123
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_124
    check-cast v7, [Lnak;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_125
    cmpg-float v0, p1, v0

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_127
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_128
    cmpg-float v1, v1, v3

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    if-nez v3, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    :cond_35
    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    sget-object v1, Lnac;->k:Lnac;

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_12c
    if-ltz v0, :cond_36

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->92ebcae27b5395a18af07a7e07265cf7m(Lnai;)V

    :goto_12f
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    iget-wide v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->am:J

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_133
    goto/16 :goto_2b

    nop

    :goto_134
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_135
    if-eqz v1, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    cmp-long v1, v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_137
    invoke-virtual {v1, v0}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_138
    const/4 v6, 0x1

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_139
    sget-object v0, Lnac;->c:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->am:J

    nop

    :goto_13b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    if-eqz v1, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_13e
    if-nez v1, :cond_39

    nop

    goto/32 :goto_102

    nop

    nop

    :cond_39
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v1, v3}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_140
    sget-object v0, Lnac;->e:Lnac;

    nop

    nop

    nop

    nop

    :goto_141
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_142
    goto/16 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_144
    if-eqz v7, :cond_3a

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_199

    nop

    nop

    :goto_145
    if-gt v7, v6, :cond_3b

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :cond_3b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_147
    if-eqz v7, :cond_3c

    nop

    goto/32 :goto_143

    nop

    nop

    :cond_3c
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v1, v5}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :goto_149
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_14b
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_14c
    sget-object v7, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14d
    goto/16 :goto_141

    nop

    :goto_14e
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_14f
    if-eqz v0, :cond_3d

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v0}, Lhco;->j()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_151
    if-lt v0, v1, :cond_3e

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_156

    nop

    nop

    :goto_152
    sget-object v1, Lhvq;->c:Lhvq;

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    if-ltz v3, :cond_3f

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k:Loyn;

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

    :goto_155
    sget-object v0, Lnac;->c:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_156
    if-eqz v7, :cond_40

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v7, v7, Lnaj;->a:Lmzd;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_158
    goto/16 :goto_141

    nop

    nop

    :goto_159
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iput-wide v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->am:J

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-virtual {v3, v1}, Lhvp;->j(Lhvq;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_15c
    if-nez v3, :cond_41

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_15e
    const/4 v4, 0x6

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15f
    iget-boolean v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->J:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_160
    invoke-virtual {v1, v0}, Lnac;->a(Z)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_161
    iget-object v1, v1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_162
    iget-object v8, v12, Lnaj;->b:Lmze;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    invoke-virtual {v1, v3}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_166
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    iget v8, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_168
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_169
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_16a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget v8, v8, Lmzd;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16c
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    iget-boolean v4, v1, Lnab;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    if-eqz v1, :cond_42

    nop

    nop

    goto/32 :goto_13b

    nop

    :cond_42
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_16f
    iget v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->y:I

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_170
    if-gtz v1, :cond_43

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_171
    sget-object v8, Lmzf;->c:Lmzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_172
    cmpl-float v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_173
    move v3, v6

    nop

    nop

    nop

    nop

    :goto_174
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v0, v1}, Lnac;->a(Z)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_176
    cmpl-float v0, p1, v2

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_177
    if-nez v0, :cond_44

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_179
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    if-eq v7, v6, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :cond_45
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    if-nez v1, :cond_46

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_17c
    if-eqz v1, :cond_47

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_47
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_17d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_17f
    if-nez v0, :cond_48

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

    :cond_48
    goto/32 :goto_18b

    nop

    nop

    :goto_180
    check-cast v1, Lnaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_181
    iput v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->al:I

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_182
    goto/16 :goto_141

    nop

    :goto_183
    goto/32 :goto_f4

    nop

    nop

    :goto_184
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_185
    move v3, v5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_186
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_187
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    if-ltz v1, :cond_49

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    :cond_49
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v3, v1}, Lhvp;->j(Lhvq;)Z

    move-result v1

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    sub-long/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_18b
    sget-object v0, Lnac;->g:Lnac;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    goto/16 :goto_141

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    if-ne v7, v8, :cond_4a

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :cond_4a
    goto/32 :goto_4c

    nop

    nop

    :goto_190
    iget-object v1, v0, Lnai;->a:Lryb;

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_191
    iget-boolean v1, v1, Lnab;->d:Z

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_192
    invoke-virtual {v1, v4}, Lmzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_193
    goto/32 :goto_e7

    nop

    :goto_194
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_195
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_196
    sget-object v7, Lnac;->n:Lnac;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_197
    const/16 v9, 0xf

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_198
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iget v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aq:I

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    move v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_19b
    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_19c
    return-object p0

    nop

    nop

    :goto_19d
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7521e341d48b08f214d1dac0738f16d0m()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_19f
    sget-object v0, Lnac;->b:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_1a0
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_1a1
    sget-object v3, Lnac;->m:Lnac;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Z:Ljava/util/List;

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_1a3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a4
    if-ltz v0, :cond_4b

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :cond_4b
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    iget-object v7, v7, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_1a6
    if-ltz v0, :cond_4c

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_4c
    goto/32 :goto_139

    nop

    nop

    :goto_1a7
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->92ebcae27b5395a18af07a7e07265cf7m(Lnai;)V

    :goto_1a8
    goto/32 :goto_d

    nop

    nop

    :goto_1a9
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_1aa
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    invoke-virtual {v0, v5}, Lnac;->a(Z)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    invoke-static {v7}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    add-float/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    iget-object v1, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/16 :goto_141

    nop

    nop

    :goto_1b3
    goto/32 :goto_179

    nop

    nop

    nop

    :goto_1b4
    if-ltz v1, :cond_4d

    nop

    goto/32 :goto_b4

    nop

    :cond_4d
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/16 :goto_141

    nop

    nop

    :goto_1b6
    goto/32 :goto_2d

    nop

    nop

    :goto_1b7
    invoke-virtual {v3, v5}, Lnac;->a(Z)F

    move-result v3

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_1b8
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_1b9
    sget-object v1, Lhvq;->d:Lhvq;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-virtual {v4, v1}, Lnac;->a(Z)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsmt;
    .locals 14

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Lryb;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v6, v13, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v13, Lsmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v3}, Lkzr;-><init>(I)V

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_6
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_8
    iget-object v1, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_e3

    nop

    :pswitch_1
    goto/32 :goto_5b

    nop

    nop

    :goto_d
    const-string v2, ""

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    or-int/2addr v6, v8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    iput v7, v6, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v2, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_16
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_17
    move-object v13, v12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    iput v6, v3, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v6, v0, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Llyr;->q:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lnai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    const/16 v6, 0x9

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v3, 0xe

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    or-int/lit16 v6, v6, 0x2000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_22
    move v6, v7

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_23
    iput v6, v0, Lsmt;->b:I

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_25
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_26
    goto/16 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v1, Lsmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_28
    const v1, 0x3fa66666    # 1.3f

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

    :goto_29
    move v10, v11

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    or-int/lit16 v3, v3, 0x4000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_2f
    check-cast p0, Lsmt;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    or-int/lit16 v1, v1, 0x400

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v1, v0, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v9, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_1
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_33
    or-int/lit16 v3, v3, 0x1000

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_34
    goto/16 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->s:Loyd;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    iget v3, v1, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_37
    iput-boolean v6, v12, Lsmt;->f:Z

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_39
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v7, v4, Ltkb;->b:Ltkg;

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

    nop

    :goto_3b
    iget-object v2, v2, Lmzf;->al:Ljava/lang/String;

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v6, v1

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_3e
    iget v6, v13, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lsmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_41
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

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

    :goto_42
    const/4 v6, 0x6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_43
    iput v8, v7, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v8, 0x4

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_47
    iput v1, v7, Lsmt;->g:I

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_49
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_107

    nop

    nop

    :goto_4b
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_4c
    or-int/2addr v7, v13

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_4d
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_4e
    or-int/2addr v8, v9

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v1, v0, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_50
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2, v3}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_55
    or-int/lit16 v1, v1, 0x200

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_59
    goto/32 :goto_53

    nop

    nop

    :goto_5a
    iget-object v12, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5b
    move v6, v11

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

    :goto_5c
    iget v6, v1, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_5d
    const/4 v11, 0x3

    nop

    packed-switch v6, :pswitch_data_0

    :pswitch_5
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v6, v3, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    or-int/lit16 v7, v7, 0x100

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    long-to-int p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_61
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :cond_3
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_63
    invoke-virtual {v6, v7}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_65
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v5, p0, Lsmt;->s:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_67
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_68
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_69
    iget v3, v1, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, v2, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_6b
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_6d
    goto/32 :goto_44

    nop

    nop

    :goto_6e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput-boolean v3, v0, Lsmt;->m:Z

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v8, v7, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_73
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput v8, v7, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_e3

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_78
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v2, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7b
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v2, v0, Lsmt;->r:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput v3, v1, Lsmt;->b:I

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_7e
    iput v8, v7, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput v10, v0, Lsmt;->l:I

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_80
    move v6, v8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_85
    goto/32 :goto_bd

    nop

    nop

    :goto_86
    iget-object p0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_87
    iget v13, v12, Lsmt;->b:I

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_89
    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget v1, v0, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_8b
    const v0, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eqz v8, :cond_7

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_8e
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_90
    invoke-interface {v1}, Lj$/util/stream/Stream;->count()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_91
    iput-boolean v0, v1, Lsmt;->n:Z

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v0}, Lmzg;->a()Z

    move-result v0

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->o:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->v:Ljava/util/List;

    nop

    invoke-interface {v5}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_95
    iput v3, v1, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v2, Lkzr;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v3, 0x0

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_9a
    check-cast v7, Lsmt;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_9b
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_9c
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9d
    iget v3, v1, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9e
    iget-object v2, v0, Lnai;->a:Lryb;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_9f
    if-eqz v6, :cond_9

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_9
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_a0
    if-eqz v7, :cond_a

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    or-int/lit8 v7, v7, 0x20

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

    nop

    :goto_a2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_a4
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move v3, v9

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_a7
    iget-object v0, v0, Lmzg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_a8
    sget-object v7, Llyr;->p:Llze;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_a9
    check-cast v6, Lsmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast v0, Lsmt;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v0, Lsmt;

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_ad
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iput-boolean v0, v6, Lsmt;->k:Z

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_af
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4a

    nop

    :goto_b1
    iget-object v1, v4, Ltkb;->b:Ltkg;

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

    :goto_b2
    iget-object v12, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_b4
    long-to-int v1, v1

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iput v1, v0, Lsmt;->b:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_b6
    if-gez v0, :cond_c

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_c
    goto/32 :goto_a5

    nop

    nop

    :goto_b7
    iput-boolean v6, v7, Lsmt;->c:Z

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_b8
    iget v7, v6, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_b9
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_ba
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_bb
    iput v1, v0, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_bc
    const/high16 v1, 0x20000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_be
    if-eqz v1, :cond_d

    nop

    nop

    goto/32 :goto_ba

    nop

    :cond_d
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object p0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_c0
    or-int/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iput v3, v1, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    move-object v3, v1

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_c4
    iput-boolean v0, v1, Lsmt;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_c7
    if-eqz v7, :cond_f

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_f
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_ca
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    check-cast v12, Lsmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_ce
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_d0
    iput v1, v0, Lsmt;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_d1
    check-cast v7, Lsmt;

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_d2
    check-cast v6, Lsmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget v8, v7, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_d5
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_d8
    move-object v7, v6

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_da
    const/16 v6, 0xa

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_db
    if-eqz p0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-eqz v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :cond_11
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v6}, Lnac;->ordinal()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_de
    or-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_df
    if-eqz v12, :cond_12

    nop

    goto/32 :goto_115

    nop

    nop

    :cond_12
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v1}, Lryb;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_e1
    goto :goto_e3

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_e2
    move v6, v10

    nop

    nop

    :goto_e3
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_e5
    check-cast v3, Lsmt;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_e6
    sub-long/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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

    :goto_e9
    iget v0, v0, Lnai;->c:I

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_ea
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_ec
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_ed
    iput v6, v13, Lsmt;->e:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_4b

    nop

    nop

    :goto_ef
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iput p0, v1, Lsmt;->q:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_f3
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/16 :goto_e

    nop

    :goto_f5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f6
    const/16 v7, 0x8

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    check-cast v1, Lsmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_f9
    sget-object v7, Lnac;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_fa
    check-cast v1, Lsmt;

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

    :goto_fb
    or-int/lit16 v6, v6, 0x80

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_fc
    iget-object v2, v0, Lnai;->a:Lryb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iput-boolean v6, v7, Lsmt;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    move v6, v9

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ff
    iget v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_100
    iget-wide v6, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->N:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_101
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_102
    iget v8, v7, Lsmt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_103
    iget v7, v6, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

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

    :goto_105
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_106
    throw p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :goto_107
    goto/32 :goto_ee

    nop

    nop

    :goto_108
    check-cast v7, Lsmt;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_109
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_10a
    or-int/lit8 v8, v8, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_10b
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_10c
    iput v7, v6, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_10d
    iput v1, v6, Lsmt;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iput-boolean v0, v3, Lsmt;->o:Z

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_10f
    sget-object v4, Lsmt;->a:Lsmt;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_110
    move-object v12, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_111
    or-int/lit8 v6, v6, 0x40

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_113
    iget-boolean v6, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_115
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget v1, v0, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_117
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_118
    check-cast v0, Lsmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget v1, v0, Lnai;->c:I

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

    :goto_11a
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v0}, Lmzg;->b()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_11c
    const/high16 v3, 0x10000

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_11d
    check-cast v1, Lsmt;

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_11e
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_120
    goto/16 :goto_e3

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_42

    nop

    nop

    :goto_121
    or-int/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_122
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ah:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_123
    if-eqz v1, :cond_13

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_124
    const v6, 0x8000

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    check-cast v0, Lsmt;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_126
    goto/16 :goto_e3

    nop

    :pswitch_9
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iput v0, p0, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    iput v7, v12, Lsmt;->b:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_12b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iput v0, v1, Lsmt;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iput v6, v1, Lsmt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    const/4 v6, 0x7

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-eqz v6, :cond_14

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sget-object v1, Lhvq;->l:Lhvq;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->e:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_c
    const v1, 0xf

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0, v1}, Lhvp;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lnam;->b:Lrss;

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

    :goto_15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

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

    nop

    :goto_18
    const v1, 0x7f140272

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
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

    :goto_1f
    const v1, 0x7f140271

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v1, Lhvq;->m:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_7

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop
.end method

.method public final d(Lnac;)V
    .locals 1

    goto/32 :goto_b

    nop

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

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->U:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Lnac;->equals(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_5
    check-cast v0, Lnad;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    sget-object v0, Lnac;->a:Lnac;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p1}, Lnad;->g(Lnac;)V

    goto/32 :goto_8

    nop

    nop
.end method

.method public final e(Lnad;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->U:Ljava/util/List;

    nop

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

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->U:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->6a76c551e4658c5f4308c862164e4dd9m()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->N:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    const v1, 0xf

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/util/List;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->H:Ljava/util/List;

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

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ao:Landroid/view/View$AccessibilityDelegate;

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

    :goto_2
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ao:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ao:Landroid/view/View$AccessibilityDelegate;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lmzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xb

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

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

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

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    invoke-direct {v0, p0, p1}, Lmzs;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    const-wide/16 v0, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->x:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, p1, v1}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_a
    const/16 v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->x:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->x:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lmiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Ljqb;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ai:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->au:Ljqb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lmok;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    const/16 v2, 0x14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ai:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aj:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, v2}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->W:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    return-void

    nop

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
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->av:Lfwv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final j(Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

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

    :goto_1
    iget-object p0, p0, Lnam;->b:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

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

    nop

    :goto_3
    check-cast p0, Lhsd;

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
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

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

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->kxRyD:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lnam;->a:Lsdb;

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

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_7

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lpdl;->c(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lhsd;->e:Lpdl;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0x12d7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Lpck;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/16 p1, 0x12d8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    const-string p1, "setPreviewSize, view is not present."

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const-string p1, "previewSize is null"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lpdl;->b(Lpck;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lnam;->a:Lsdb;

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

    :goto_8
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    sget-object p0, Lnam;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/16 p1, 0x12d9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_e
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_19

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

    nop

    nop

    :goto_f
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    check-cast p0, Lhsd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhsd;->e:Lpdl;

    nop

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

    :goto_13
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 11

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Lmzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t:Ljdf;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aw:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v5, p0}, Lmzn;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7
    iget-object v4, v1, Lhvp;->g:Landroid/speech/tts/UtteranceProgressListener;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v1, 0x32

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a0

    nop

    nop

    :goto_e
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_f
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->N:J

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->i:Lowu;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aj:Z

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lmqs;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_13
    iput v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->as:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_16
    new-instance v2, Lmqs;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x3

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aw:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_1f
    check-cast v1, Ljava/lang/Boolean;

    nop

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

    :goto_20
    const-string v1, "Gyro sensor is null."

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, v1, Lhvp;->f:Ltxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

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

    :goto_24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_27
    invoke-virtual {v1, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    :goto_29
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2a
    const-wide v1, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v2}, Lhvp;->i(Z)V

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_2f
    sget-object v2, Lnac;->f:Lnac;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_30
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->E:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_35
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ak:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_39
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->s(Z)Z

    move-result v1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->H:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->H:Ljava/util/List;

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

    :goto_41
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-boolean v0, v1, Lhvp;->l:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

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

    :goto_48
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    :goto_49
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_4a
    return-void

    nop

    :goto_4b
    goto/32 :goto_18

    nop

    nop

    :goto_4c
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ad:Lmzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v1, :cond_7

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_50
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_52
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->q(Ljava/util/List;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lmzg;->a()Z

    move-result v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, p0}, Ljdc;->f(Ljdf;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_9
    :goto_5a
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v1, :cond_a

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5e
    invoke-virtual {v1, v2}, Lhvp;->i(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_b
    :goto_60
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v2, v4}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-wide/16 v1, 0x1e

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto :goto_69

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {v2, p0, v4}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_68
    move v0, v3

    nop

    nop

    :goto_69
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/16 v1, 0x12c6

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_6b
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6c
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_6d
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_6e
    move v0, v3

    nop

    nop

    :goto_6f
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_c
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v0, :cond_d

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a7

    nop

    nop

    :goto_73
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aa:Landroid/hardware/SensorEventListener;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2}, Lmzy;->b()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_75
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_76
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_5

    nop

    nop

    :goto_79
    invoke-virtual {v1, v2}, Lhvp;->i(Z)V

    :goto_7a
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_7f
    iput-wide v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->G:J

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->W:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_81
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->af:Loyd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->i:Lowu;

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

    :goto_83
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_86
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->af:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_89
    const/16 v2, 0x12

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_8b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_8d
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8f
    if-nez v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-boolean v2, v1, Lhvp;->x:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_93
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ae:Ljdc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_94
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_8b

    nop

    :cond_11
    :goto_96
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_97
    invoke-direct {v1, p0, v2}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j(Z)V

    goto/32 :goto_5d

    nop

    nop

    :goto_99
    const-string v1, "startHotshot#resetProp"

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

    :goto_9a
    iput-boolean v0, v1, Lhvp;->k:Z

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

    :goto_9b
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    new-instance v5, Lmzn;

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

    :goto_9d
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_9f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move-wide v8, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a1
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j(Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v2, v1, Lhvp;->q:Lnac;

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_a4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v0}, Lmzg;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->q(Ljava/util/List;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_6f

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast v2, Landroid/speech/tts/TextToSpeech;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_ad
    if-nez v1, :cond_12

    nop

    goto/32 :goto_66

    nop

    :cond_12
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v0}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

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

    :goto_b2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-eqz v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_3

    nop

    nop

    :goto_b4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_b5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_b6
    if-nez v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_14
    goto/32 :goto_81

    nop

    nop

    :goto_b7
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 4

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    :goto_4
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lmzt;->e:Lmzt;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    iget-object v1, v1, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

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

    :goto_a
    sget-object v1, Lnac;->f:Lnac;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lhvp;->h()V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

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

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

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

    :goto_f
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ak:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_13
    iput-boolean v0, v1, Lnaa;->d:Z

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

    :goto_14
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v1, Lnaa;->a:Llvo;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    :goto_18
    iput-object v0, v1, Lnaa;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1c
    iput-boolean v0, v1, Lhvp;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_20
    iget-object v2, v1, Lnam;->d:Loyn;

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

    nop

    :goto_21
    iput-boolean v0, v1, Lnam;->c:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4c

    nop

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->P:Z

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    :goto_28
    iput-boolean v0, v1, Lhvp;->k:Z

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

    :goto_29
    invoke-virtual {v2, v3}, Llvo;->a(Llvm;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2a
    iget-object v3, v1, Lnaa;->b:Llvm;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v1, Lhvp;->t:Lj$/util/Optional;

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

    nop

    :goto_2d
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_39

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_4b

    nop

    :goto_2f
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

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
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aw:Lfdn;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_33
    iput-boolean v0, v1, Lhvp;->n:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v2, Landroid/speech/tts/TextToSpeech;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_35
    iput-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x19

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

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

    :goto_3d
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto/32 :goto_2c

    nop

    nop

    :goto_3e
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, p0}, Ljdc;->h(Ljdf;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    const-wide v1, 0x7fffffffffffffffL

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v2, Landroid/speech/tts/TextToSpeech;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->f:Lhvp;

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

    :goto_44
    iput-boolean v0, v1, Lnaa;->e:Z

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

    :goto_45
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->A:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->q:Lnaa;

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

    :goto_48
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v0}, Lnam;->c(Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-array v3, v0, [Lnak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ae:Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t:Ljdf;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ar:Landroid/hardware/Sensor;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aa:Landroid/hardware/SensorEventListener;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_52
    iput-wide v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->E:J

    nop

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

    :goto_53
    iget-object v2, v1, Lhvp;->t:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-boolean v2, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:Z

    nop

    :goto_55
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object v1

    nop

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

    :goto_59
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_53

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lmqs;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x10

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

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->W:Ljava/util/concurrent/ScheduledExecutorService;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_c
    const v1, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->aj:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, p0, v2}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final o(Lnad;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->U:Ljava/util/List;

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

.method public final p()V
    .locals 5

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, v2, v3, v4}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->i:Lowu;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->S:Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j:Lncn;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

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

    :goto_6
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lmzt;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lmzt;->e:Lmzt;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lncn;->h()Z

    move-result v1

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

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->j:Lncn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lfgu;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_16
    if-nez v0, :cond_6

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    if-nez v0, :cond_7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

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

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    sget-object v1, Lmzt;->d:Lmzt;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    goto :goto_24

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_24
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lkyf;->B()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lmzm;->a()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->i:Lowu;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_9
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->S:Lkyf;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2e
    if-eqz v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lmzt;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Lmzt;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    const/16 v3, 0x14

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

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

    nop
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lmzt;->b:Lmzt;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_30

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    nop

    :goto_7
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lmzt;->a:Lmzt;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lmzt;->a:Lmzt;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lmzt;->b:Lmzt;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_6

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

    nop

    :cond_6
    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v0, Lmzt;->d:Lmzt;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    :goto_2e
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->u()Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7

    nop

    nop
.end method

.method public final r()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->s(Z)Z

    move-result p0

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
    const/4 v0, 0x0

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

.method public final s(Z)Z
    .locals 7

    goto/32 :goto_4d

    nop

    nop

    :goto_0
    check-cast v0, Lnne;

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
    goto/32 :goto_22

    nop

    :goto_2
    goto/16 :goto_57

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_6
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7
    sget-object v6, Llyr;->p:Llze;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_71

    nop

    nop

    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m:Loyd;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_b
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_2
    goto/32 :goto_75

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v5}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const-string v4, "isSupportHotshot#checkA11yManager"

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ag:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_15
    goto :goto_20

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v4, :cond_5

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1f
    move v1, v2

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

    :goto_21
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    const/4 v2, 0x1

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

    :goto_24
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

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

    :goto_28
    check-cast v4, Ljava/lang/Boolean;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ab:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2a
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2b
    check-cast v4, Ljava/lang/Boolean;

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

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2d
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2f
    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v2, v3

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_38

    nop

    nop

    :goto_32
    invoke-virtual {v5, v6}, Llyi;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_33
    const-string v5, "isSupportHotshot#checkCountdown"

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

    :goto_34
    invoke-direct {p0, p1, v6}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V

    goto/32 :goto_4e

    nop

    nop

    :goto_35
    goto/16 :goto_6f

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4f

    nop

    nop

    :goto_37
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v0, "isSupportHotshot#updateSupported"

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v6, Llyr;->p:Llze;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v4, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v4, :cond_a

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_a
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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

    :goto_43
    if-nez v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_44
    sget-object v6, Llyi;->a:Llyi;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_46
    const-string v1, "isSupportHotshot#getAppMode"

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_48
    move v0, v2

    nop

    :goto_49
    goto/32 :goto_54

    nop

    nop

    :goto_4a
    check-cast v4, Ljava/lang/Boolean;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4b
    invoke-virtual {v4, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x13

    nop

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

    :goto_4e
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4f
    move v0, v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_53
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_54
    const-string v1, "isSupportHotshot#checkCamFacing"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->7dd154808b1c676d3d63f3a63e9edabfm(ZLjava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_56
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_b

    nop

    nop

    :goto_58
    goto :goto_57

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5b
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v5, Llyi;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ac:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5f
    if-lez v0, :cond_d

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    :goto_60
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->V:Loyd;

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

    :goto_61
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_62
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->at:Llyv;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_63
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

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

    :goto_64
    if-ne v0, v1, :cond_e

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const-string v6, "isSupportHotshot#checkSettings"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :goto_67
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->Y:Loyn;

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

    :goto_6d
    if-ne v2, p1, :cond_f

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ab:Loyn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_71
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->d:Lhco;

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

    :goto_72
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_74
    if-eq v0, v1, :cond_10

    nop

    goto/32 :goto_36

    nop

    :cond_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_11
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_76
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_77
    sget-object v6, Llyr;->q:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop
.end method

.method public final t()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->ah:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final u()Z
    .locals 2

    goto/32 :goto_e

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->au:Ljqb;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_7
    check-cast p0, Lnne;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->V:Loyd;

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

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->w:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljqb;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Lnne;->equals(Ljava/lang/Object;)Z

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

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v0

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

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final v()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x3

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

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/4 p0, 0x2

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
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
