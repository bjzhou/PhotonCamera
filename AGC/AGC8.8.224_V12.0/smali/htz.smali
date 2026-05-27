.class public Lhtz;
.super Lhtm;


# instance fields
.field public final a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final b:Litm;

.field public final c:Libj;

.field public final d:Lebj;

.field public final e:Lgeh;

.field public final f:Lgvs;

.field public final g:Lcfp;

.field public final h:Loiw;

.field public final i:Ldbf;

.field public final j:Licj;

.field public final k:Ldhi;

.field public final l:I

.field public m:Z

.field public n:Lklv;

.field public o:Lklv;

.field public final p:Ljew;

.field private final q:Ljwb;

.field private final r:Landroid/view/Window;

.field private final s:Liff;

.field private final t:Lhwu;

.field private final u:Landroid/os/Handler;

.field private final v:Loiw;


# direct methods
.method public constructor <init>(Ljwb;Loiw;Landroid/view/Window;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Libj;Lhwu;Lebj;Lgeh;Ljew;Lgvs;Landroid/os/Handler;Lcfp;Loiw;Ldbf;Licj;Ldhi;[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lhtm;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhtz;->m:Z

    move-object v1, p1

    iput-object v1, v0, Lhtz;->q:Ljwb;

    move-object v1, p3

    iput-object v1, v0, Lhtz;->r:Landroid/view/Window;

    move-object v2, p4

    iput-object v2, v0, Lhtz;->a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v2, p5

    iput-object v2, v0, Lhtz;->s:Liff;

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v1, v0, Lhtz;->l:I

    move-object v1, p6

    iput-object v1, v0, Lhtz;->b:Litm;

    move-object v1, p7

    iput-object v1, v0, Lhtz;->c:Libj;

    move-object v1, p8

    iput-object v1, v0, Lhtz;->t:Lhwu;

    move-object v1, p9

    iput-object v1, v0, Lhtz;->d:Lebj;

    move-object v1, p10

    iput-object v1, v0, Lhtz;->e:Lgeh;

    move-object v1, p12

    iput-object v1, v0, Lhtz;->f:Lgvs;

    move-object/from16 v1, p13

    iput-object v1, v0, Lhtz;->u:Landroid/os/Handler;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhtz;->g:Lcfp;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhtz;->h:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lhtz;->i:Ldbf;

    move-object v1, p11

    iput-object v1, v0, Lhtz;->p:Ljew;

    move-object/from16 v1, p17

    iput-object v1, v0, Lhtz;->j:Licj;

    move-object v1, p2

    iput-object v1, v0, Lhtz;->v:Loiw;

    move-object/from16 v1, p18

    iput-object v1, v0, Lhtz;->k:Ldhi;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object v0, p0, Lhtz;->r:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget-object p1, p0, Lhtz;->r:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final B(Lika;)V
    .locals 1

    iget-object v0, p0, Lhtz;->q:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhtz;->s:Liff;

    invoke-interface {v0, p1}, Liff;->af(Lika;)V

    iget-object v0, p0, Lhtz;->a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchToMode(Lika;)V

    return-void
.end method

.method public final r()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;
    .locals 2

    iget-object v0, p0, Lhtz;->v:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    return-object v0
.end method

.method public final t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;
    .locals 2

    iget-object v0, p0, Lhtz;->v:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lhtz;->t:Lhwu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->c()V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-virtual {p0}, Lhtz;->s()Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->setVisibility(I)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lhtz;->t:Lhwu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->d()V

    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lhtz;->u:Landroid/os/Handler;

    new-instance v1, Lhph;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhtz;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Lhtz;->w()V

    iget-object v0, p0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    invoke-virtual {p0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    invoke-virtual {p0}, Lhtz;->x()V

    iget-object v0, p0, Lhtz;->b:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhtz;->b:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Litm;->p()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lhtz;->f:Lgvs;

    invoke-virtual {v0}, Lgvl;->c()V

    invoke-virtual {p0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    iget-object v0, p0, Lhtz;->b:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhtz;->b:Litm;

    invoke-interface {v0}, Litm;->n()V

    return-void
.end method
