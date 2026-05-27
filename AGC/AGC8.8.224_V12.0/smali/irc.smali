.class public Lirc;
.super Liqw;


# static fields
.field public static final f:Lnak;


# instance fields
.field public final g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

.field public final h:Ljuh;

.field public final i:Lhws;

.field public final j:Landroid/animation/ObjectAnimator;

.field public final k:Ljwb;

.field public l:Z

.field public final m:Ljava/lang/Runnable;

.field public final n:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/whitebalance/ManualWhiteBalanceStatechart"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lirc;->f:Lnak;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Ljuh;Lhws;Ligo;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Liqw;-><init>()V

    new-instance p5, Ljvk;

    const/4 p6, 0x1

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-direct {p5, p6}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lirc;->k:Ljwb;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lirc;->l:Z

    new-instance p6, Liqg;

    const/16 p7, 0xe

    invoke-direct {p6, p0, p7}, Liqg;-><init>(Lirc;I)V

    iput-object p6, p0, Lirc;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iput-object p2, p0, Lirc;->h:Ljuh;

    iput-object p3, p0, Lirc;->i:Lhws;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x10b0000

    invoke-static {p2, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance p3, Liqx;

    invoke-direct {p3, p0, p1, p5}, Liqx;-><init>(Lirc;Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p0, Lirc;->j:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lirc;->n:Ligo;

    return-void
.end method


# virtual methods
.method final k()V
    .locals 2

    iget-object v0, p0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iget-object v1, p0, Lirc;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(ZZ)V
    .locals 3

    iget-object v0, p0, Lirc;->h:Ljuh;

    new-instance v1, Liqr;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p2, p1, v2}, Liqr;-><init>(Lirc;ZZI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lirc;->k:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(ZZ)V
    .locals 3

    iget-object v0, p0, Lirc;->h:Ljuh;

    new-instance v1, Liqr;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p2, p1, v2}, Liqr;-><init>(Lirc;ZZI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method
