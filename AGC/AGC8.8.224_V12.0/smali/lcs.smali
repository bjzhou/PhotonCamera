.class public final Llcs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final a:Llcb;

.field public final b:Llcn;

.field public volatile c:Z

.field private final d:Llbd;


# direct methods
.method public constructor <init>(Llbd;Llcb;Llcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llcs;->d:Llbd;

    iput-object p2, p0, Llcs;->a:Llcb;

    iput-object p3, p0, Llcs;->b:Llcn;

    const/4 p1, 0x1

    iput-boolean p1, p0, Llcs;->c:Z

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object p1

    invoke-static {p3, p4}, Lkyn;->d(II)Lkym;

    move-result-object p2

    iget-object p3, p0, Llcs;->d:Llbd;

    new-instance p4, Lkgc;

    const/4 v0, 0x7

    invoke-direct {p4, p0, p1, p2, v0}, Lkgc;-><init>(Llcs;Llfg;Lkym;I)V

    invoke-static {p3, p4}, Lkzf;->l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lkzf;

    move-result-object p1

    invoke-static {p1}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-boolean p1, p0, Llcs;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Llcs;->d:Llbd;

    new-instance v0, Lkxc;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lkxc;-><init>(Llcs;I)V

    invoke-static {p1, v0}, Lkzf;->l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lkzf;

    move-result-object p1

    invoke-static {p1}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
