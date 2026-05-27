.class public Lcyl;
.super Lcys;


# instance fields
.field private final a:Litm;

.field private final b:Landroid/view/Window;

.field private final c:Libj;

.field private final d:Lcvr;

.field public final e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final f:Liff;

.field public final g:Lhwu;

.field public h:Lcys;

.field public final i:Ldfa;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Libj;Ldfa;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lcys;-><init>()V

    iput-object p1, p0, Lcyl;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lcyl;->f:Liff;

    iput-object p3, p0, Lcyl;->a:Litm;

    iput-object p4, p0, Lcyl;->b:Landroid/view/Window;

    iput-object p5, p0, Lcyl;->g:Lhwu;

    iput-object p6, p0, Lcyl;->d:Lcvr;

    iput-object p7, p0, Lcyl;->c:Libj;

    iput-object p8, p0, Lcyl;->i:Ldfa;

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    iget-object v0, p0, Lcyl;->h:Lcys;

    invoke-virtual {v0}, Lcys;->bx()I

    iget-object v0, p0, Lcyl;->h:Lcys;

    invoke-virtual {v0}, Lcys;->bx()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcyl;->d:Lcvr;

    invoke-virtual {v0}, Lcvr;->u()V

    iget-object v0, p0, Lcyl;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    sget-object v1, Lika;->i:Lika;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchToMode(Lika;)V

    iget-object v0, p0, Lcyl;->f:Liff;

    sget-object v1, Lika;->i:Lika;

    invoke-interface {v0, v1}, Liff;->af(Lika;)V

    iget-object v0, p0, Lcyl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget-object v1, p0, Lcyl;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcyl;->a:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    iget-object v0, p0, Lcyl;->a:Litm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lcyl;->a:Litm;

    move-object v2, v0

    check-cast v2, Lisi;

    iget-boolean v2, v2, Lisi;->S:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Litm;->p()V

    :cond_0
    iget-object v0, p0, Lcyl;->c:Libj;

    invoke-interface {v0}, Libj;->c()V

    iget-object v0, p0, Lcyl;->g:Lhwu;

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcyl;->a:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lcyl;->a:Litm;

    invoke-interface {v0, v1}, Litm;->B(Z)V

    iget-object v0, p0, Lcyl;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    return-void
.end method
