.class public Ldox;
.super Ldos;


# instance fields
.field public final a:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field public final b:Landroid/widget/CheckBox;

.field public final c:Landroid/animation/ObjectAnimator;

.field public final d:Ldpc;

.field public final e:Ljwb;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/widget/CheckBox;Landroid/animation/ObjectAnimator;Ldpc;Ldja;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ldos;-><init>()V

    iput-object p1, p0, Ldox;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iput-object p2, p0, Ldox;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Ldox;->c:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Ldox;->d:Ldpc;

    iget-object p2, p5, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldox;->e:Ljwb;

    new-instance p2, Ldot;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p4}, Ldot;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompView;I)V

    invoke-virtual {p3, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final i(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Ldox;->d:Ldpc;

    invoke-virtual {p2}, Ldpc;->j()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Ldox;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    iget-object p1, p0, Ldox;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p1, p0, Ldox;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setAlpha(F)V

    return-void
.end method
