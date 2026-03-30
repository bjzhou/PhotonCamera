.class public Ljkx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lmwy;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

.field public final e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

.field public f:Z

.field public final g:Lghe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jkx"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Ljkx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lghe;Landroid/view/View;Ljava/util/concurrent/Executor;Lmwy;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->p:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljkx;->g:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

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

    :goto_3
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    check-cast p1, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljkx;->d:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

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

    :goto_a
    const p0, 0x7f0b0239

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
    iput-object p3, p0, Ljkx;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const p1, 0x7f0b023d

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    const p1, 0x7f0b00d2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Ljkx;->f:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const p1, 0x7f0b023c

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    check-cast p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

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

    :goto_14
    const/4 v0, 0x0

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

    :goto_15
    check-cast p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

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
    iput-object p4, p0, Ljkx;->b:Lmwy;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Ljkx;->e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    const p0, 0x7f0b050f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lghe;->l(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljkx;->g:Lghe;

    nop

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

    nop
.end method

.method public final declared-synchronized b(Landroid/graphics/Bitmap;Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Ljkx;->f:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

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

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_2
    invoke-static {}, Lowu;->a()V

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljkx;->e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    iget-object p2, p0, Ljkx;->e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_b

    nop

    nop

    nop

    :cond_2
    iget-object p2, p0, Ljkx;->e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object p2, p0, Ljkx;->e:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    const/16 v0, 0x8

    nop

    nop

    invoke-virtual {p2, v0}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    :goto_b
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    iput-boolean p2, p0, Ljkx;->f:Z

    nop

    nop

    nop

    iget-object p2, p0, Ljkx;->d:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    nop

    nop

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->b(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Ljkx;->d:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    const v0, 0x7f1404cc

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Ljkx;->b:Lmwy;

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

    nop

    :goto_2
    invoke-virtual {p0}, Lmwy;->d()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method
