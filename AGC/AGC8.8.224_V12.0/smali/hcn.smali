.class public final Lhcn;
.super Lkoy;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Lkpb;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lkoy;-><init>(Lkpb;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhcn;->b:Z

    iput-object p2, p0, Lhcn;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhcn;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcn;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lkoy;->close()V

    iget-object v0, p0, Lhcn;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
