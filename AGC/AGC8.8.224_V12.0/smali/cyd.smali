.class public Lcyd;
.super Lcys;


# instance fields
.field public final e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final f:Liff;

.field public final g:Libj;

.field public final h:Lczx;

.field public final i:Ldhi;

.field public j:Lcys;

.field public final k:Ldfa;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Libj;Ldfa;Lczx;Ldhi;[B[B)V
    .locals 0

    invoke-direct {p0}, Lcys;-><init>()V

    iput-object p1, p0, Lcyd;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lcyd;->f:Liff;

    iput-object p3, p0, Lcyd;->g:Libj;

    iput-object p4, p0, Lcyd;->k:Ldfa;

    iput-object p5, p0, Lcyd;->h:Lczx;

    iput-object p6, p0, Lcyd;->i:Ldhi;

    return-void
.end method


# virtual methods
.method public final bx()I
    .locals 1

    iget-object v0, p0, Lcyd;->j:Lcys;

    invoke-virtual {v0}, Lcys;->bx()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcyd;->k:Ldfa;

    invoke-virtual {v0}, Ldfa;->h()V

    iget-object v0, p0, Lcyd;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopRecording(ZZ)V

    iget-object v0, p0, Lcyd;->f:Liff;

    invoke-interface {v0}, Liff;->aa()V

    iget-object v0, p0, Lcyd;->h:Lczx;

    invoke-interface {v0, v2}, Lczx;->i(Z)V

    iget-object v0, p0, Lcyd;->g:Libj;

    invoke-interface {v0, v2}, Libj;->v(Z)V

    iget-object v0, p0, Lcyd;->g:Libj;

    invoke-interface {v0, v2}, Libj;->l(Z)V

    return-void
.end method
