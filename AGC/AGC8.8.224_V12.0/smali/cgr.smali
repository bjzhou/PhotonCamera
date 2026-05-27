.class public final Lcgr;
.super Lcly;


# instance fields
.field private final a:Loiw;

.field private final b:Lkbc;

.field private final c:Lfak;

.field private d:Z


# direct methods
.method public constructor <init>(Loiw;Ljuh;Lfak;Lkbc;)V
    .locals 0

    invoke-direct {p0, p2}, Lcly;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcgr;->a:Loiw;

    iput-object p4, p0, Lcgr;->b:Lkbc;

    iput-object p3, p0, Lcgr;->c:Lfak;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcgr;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcgr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgr;->c:Lfak;

    new-instance v1, Lcgq;

    invoke-direct {v1, p0}, Lcgq;-><init>(Lcgr;)V

    invoke-virtual {v0, v1}, Lfak;->e(Lfaz;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-boolean v0, p0, Lcgr;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcgr;->b:Lkbc;

    const-string v1, "CameraActivityControllerInitializer#initialize"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcgr;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgy;

    iget-object v1, p0, Lcgr;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->h()V

    invoke-interface {v0}, Lcgy;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcgr;->d:Z

    iget-object v0, p0, Lcgr;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-object v0, p0, Lcgr;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-boolean v0, p0, Lcgr;->d:Z

    return v0
.end method
