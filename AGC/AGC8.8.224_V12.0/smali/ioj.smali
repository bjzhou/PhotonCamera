.class final Lioj;
.super Lkfg;


# instance fields
.field final synthetic a:Liok;

.field private final b:Lkeb;

.field private final c:Z

.field private final d:Lkbf;


# direct methods
.method public constructor <init>(Liok;Lkeb;Z)V
    .locals 0

    iput-object p1, p0, Lioj;->a:Liok;

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p2, p0, Lioj;->b:Lkeb;

    iput-boolean p3, p0, Lioj;->c:Z

    iget-object p1, p1, Liok;->e:Lkbc;

    const/4 p2, 0x1

    if-eq p2, p3, :cond_0

    const-string p2, "VFE.FrameToImg"

    goto :goto_0

    :cond_0
    const-string p2, "VFE.FrameToMd"

    :goto_0
    invoke-interface {p1, p2}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Lioj;->d:Lkbf;

    return-void
.end method


# virtual methods
.method public final bE()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lioj;->a:Liok;

    iget-object v0, v0, Liok;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final bk()V
    .locals 2

    iget-boolean v0, p0, Lioj;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lioj;->d:Lkbf;

    invoke-interface {v0}, Lkbf;->a()V

    iget-object v0, p0, Lioj;->a:Liok;

    iget-object v1, p0, Lioj;->b:Lkeb;

    invoke-virtual {v0, v1}, Liok;->f(Lkeb;)V

    :cond_0
    return-void
.end method

.method public final bq()V
    .locals 2

    iget-boolean v0, p0, Lioj;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lioj;->d:Lkbf;

    invoke-interface {v0}, Lkbf;->a()V

    iget-object v0, p0, Lioj;->a:Liok;

    iget-object v1, p0, Lioj;->b:Lkeb;

    invoke-virtual {v0, v1}, Liok;->f(Lkeb;)V

    :cond_0
    return-void
.end method
