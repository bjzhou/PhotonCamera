.class public final Lkyl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;
.implements Lnbg;


# static fields
.field private static final r:Lkyw;


# instance fields
.field public final a:Loyn;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lows;

.field public final d:Loyd;

.field public final e:Lnxc;

.field public final f:Loyd;

.field public final g:Loyd;

.field public final h:Z

.field public final i:Loyd;

.field public final j:Loyd;

.field public final k:Loyd;

.field public final l:Z

.field public m:Lrvg;

.field public n:Lkzx;

.field public o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

.field public p:Lkyy;

.field public q:Z

.field private s:Lnbe;

.field private t:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()Z
    .locals 1

    goto/32 :goto_3

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

    nop

    :goto_1
    sget-object v0, Lnbe;->d:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkyl;->s:Lnbe;

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    sget-object v0, Lkyw;->b:Lkyw;

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

    :goto_2
    sput-object v0, Lkyl;->r:Lkyw;

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
.end method

.method public constructor <init>(Loyn;Ljava/util/concurrent/Executor;Loyd;Lfwv;Lnxc;Loyd;Loyd;Lhoh;Loyd;Loyd;Loyd;Loyd;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p12, p0, Lkyl;->k:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lkyl;->q:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lnbe;->b:Lnbe;

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

    :goto_4
    invoke-virtual {p8, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p11, p0, Lkyl;->j:Loyd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_a
    iput-object p4, p0, Lkyl;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_c
    iput-boolean p1, p0, Lkyl;->l:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    sget-object p1, Lhnc;->j:Lhmn;

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

    :goto_10
    invoke-virtual {p8, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_11
    iput-object p1, p0, Lkyl;->a:Loyn;

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

    :goto_12
    iput-object p6, p0, Lkyl;->f:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p8, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4}, Lfwv;->i()Lows;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    sget-object p1, Lhnz;->q:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    sget-object p1, Lhmq;->bW:Lhmn;

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

    :goto_18
    invoke-virtual {p4}, Lows;->c()Lows;

    move-result-object p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p3, p0, Lkyl;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    iput-object p10, p0, Lkyl;->i:Loyd;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p5, p0, Lkyl;->e:Lnxc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Lkyl;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lkyl;->s:Lnbe;

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

    :goto_1e
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p9}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

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

    :goto_21
    iput-boolean v0, p0, Lkyl;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p7, p0, Lkyl;->g:Loyd;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(ZZ)V
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

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

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, p2, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

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

    :goto_8
    new-instance v0, Leac;

    nop

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

    :goto_9
    invoke-direct {v0, p0, p2, v2, v1}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

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

    :goto_c
    iput-object v1, p0, Lkyl;->t:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/16 v2, 0xf

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    :goto_14
    goto/16 :goto_2e

    nop

    nop

    :goto_15
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setAlpha(F)V

    goto/32 :goto_b

    nop

    nop

    :goto_19
    if-ne v0, p2, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lfgu;

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

    :goto_1b
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    if-nez v0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    goto/16 :goto_11

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p1, p0, Lkyl;->t:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lkyl;->t:Landroid/view/ViewPropertyAnimator;

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

    :goto_26
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v2, 0x12c

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

    nop

    :goto_2a
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0}, Leac;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    :goto_2f
    new-instance v0, Lfgu;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, p0, p2, v2, v1}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    :goto_35
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lkyl;->d5484163cd8d335e6b17663474ff5f2bm(ZZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkyl;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(Lkyo;)V
    .locals 10

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    move-object v3, p1

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

    :goto_1
    iget-object v5, p0, Lkyl;->p:Lkyy;

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

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lsbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    new-instance v0, Lkzx;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    move-object v4, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lkyl;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    iget-object v1, p1, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->a:Lkzx;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lkyl;->r:Lkyw;

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkyl;->n:Lkzx;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lsbg;->c:Lsbg;

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object p1, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v1 .. v9}, Lkzx;-><init>(Landroid/content/Context;Lkyo;Lkyw;Lkyy;Lkyz;Lkyx;IZ)V

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lkyw;

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

    :goto_14
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->a()Landroid/widget/LinearLayout;

    move-result-object v2

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

    :goto_15
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const/4 v9, 0x1

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

    :goto_19
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lkyl;->n:Lkzx;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    move-object v1, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v0, p1, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->a:Lkzx;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lkzx;->j()V

    goto/32 :goto_1f

    nop

    nop

    :goto_26
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->a()Landroid/widget/LinearLayout;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lkyl;->m:Lrvg;

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

    :goto_2b
    iget-object p1, p0, Lkyl;->n:Lkzx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Lkzx;->k()V

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    const v0, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lkyl;->f(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkyl;->s:Lnbe;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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
.end method

.method public final e(Z)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lnne;

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
    iget-object v0, p0, Lkyl;->d:Loyd;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lkyl;->19e596a3e324281407eb5c11093c0152m()Z

    move-result v0

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

    :goto_8
    invoke-virtual {v0}, Lnne;->c()Z

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

    :goto_9
    invoke-direct {p0, p1, v0}, Lkyl;->d5484163cd8d335e6b17663474ff5f2bm(ZZ)V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final f(Z)V
    .locals 2

    goto/32 :goto_37

    nop

    nop

    :goto_0
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_4
    iget-object v1, p0, Lkyl;->g:Loyd;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lkyl;->k:Loyd;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lkyl;->f:Loyd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lkyl;->q:Z

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    :goto_a
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

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

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkyl;->i:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    iget-object v1, p0, Lkyl;->d:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lnne;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lkyl;->a(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    :goto_1c
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lkyl;->j:Loyd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_28

    nop

    nop

    :goto_20
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    :goto_25
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0}, Lkyl;->19e596a3e324281407eb5c11093c0152m()Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lkyl;->l:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v1, Lhkx;->b:Lhkx;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v0, v1, :cond_8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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

    :goto_30
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_9

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, p1}, Lkyl;->e(Z)V

    goto/32 :goto_23

    nop

    nop

    :goto_35
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Lnne;->c()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop
.end method
