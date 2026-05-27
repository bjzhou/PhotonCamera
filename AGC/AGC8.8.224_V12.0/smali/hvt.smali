.class public Lhvt;
.super Lhvq;


# instance fields
.field private final a:Ljwb;

.field private final b:Landroid/view/Window;

.field private final c:Libj;

.field public final d:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final e:Liff;

.field public final f:Litm;

.field public final g:Lhwu;

.field public final h:Lgeh;

.field private final i:Lcvr;


# direct methods
.method public constructor <init>(Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Lgeh;Libj;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhvq;-><init>()V

    iput-object p1, p0, Lhvt;->a:Ljwb;

    iput-object p2, p0, Lhvt;->d:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p3, p0, Lhvt;->e:Liff;

    iput-object p5, p0, Lhvt;->b:Landroid/view/Window;

    iput-object p6, p0, Lhvt;->g:Lhwu;

    iput-object p7, p0, Lhvt;->i:Lcvr;

    sget-object p1, Lika;->h:Lika;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchToMode(Lika;)V

    sget-object p1, Lika;->h:Lika;

    invoke-interface {p3, p1}, Liff;->af(Lika;)V

    iput-object p4, p0, Lhvt;->f:Litm;

    iput-object p8, p0, Lhvt;->h:Lgeh;

    iput-object p9, p0, Lhvt;->c:Libj;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lhvt;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget-object v1, p0, Lhvt;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lhvt;->i:Lcvr;

    invoke-virtual {v0}, Lcvr;->u()V

    iget-object v0, p0, Lhvt;->a:Ljwb;

    sget-object v1, Lika;->h:Lika;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhvt;->f:Litm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhvt;->f:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Litm;->p()V

    :cond_0
    iget-object v0, p0, Lhvt;->f:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    iget-object v0, p0, Lhvt;->c:Libj;

    invoke-interface {v0}, Libj;->c()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lhvt;->f:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhvt;->f:Litm;

    invoke-interface {v0, v1}, Litm;->B(Z)V

    iget-object v0, p0, Lhvt;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    return-void
.end method
