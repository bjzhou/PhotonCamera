.class public Lnup;
.super Lnuk;
.source "PG"


# static fields
.field public static final f:Lsdb;


# instance fields
.field public final g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

.field public final h:Lowu;

.field public final i:Landroid/animation/ObjectAnimator;

.field public final j:Loyn;

.field public k:Z

.field public l:Z

.field public final m:Ljava/lang/Runnable;

.field public final n:Lnar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lnup;->f:Lsdb;

    nop

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

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

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

    nop

    :goto_3
    const-string v0, "nup"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Lowu;Lnar;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    const v1, 0x15

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

    :goto_2
    const/high16 v0, 0x10b0000

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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

    :goto_5
    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    iput-object v0, p0, Lnup;->m:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_a

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

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lnup;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lnup;->j:Loyn;

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

    :goto_c
    new-instance v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lnup;->k:Z

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

    :goto_f
    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    check-cast p2, Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, p1, v1}, Ljnw;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_14
    new-instance v0, Ljnw;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_16
    iput-boolean v0, p0, Lnup;->l:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lnue;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lnuk;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p2, p0, Lnup;->h:Lowu;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Lnup;->n:Lnar;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    const/4 v1, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final k()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnup;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    goto/32 :goto_3

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
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnup;->m:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(ZZ)V
    .locals 2

    goto/32 :goto_5

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    new-instance v0, Lnuf;

    nop

    nop

    goto/32 :goto_d

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    const v1, 0xd

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p2, p1, v1}, Lnuf;-><init>(Ljava/lang/Object;ZZI)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x3

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

    :goto_e
    iget-object p0, p0, Lnup;->h:Lowu;

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnup;->j:Loyn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

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

    :goto_4
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final n(ZZ)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

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
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lnuf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const v1, 0x15

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

    :goto_c
    iget-object p0, p0, Lnup;->h:Lowu;

    nop

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

    :goto_d
    invoke-direct {v0, p0, p2, p1, v1}, Lnuf;-><init>(Ljava/lang/Object;ZZI)V

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
