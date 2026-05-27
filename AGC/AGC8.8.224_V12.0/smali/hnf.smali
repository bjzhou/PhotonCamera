.class public final Lhnf;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# instance fields
.field public final a:Ljvs;

.field private final b:Lhmz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljwb;Lhna;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Lhnf;->a:Ljvs;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string p1, "PortraitTeleStream"

    invoke-virtual {v0, p1}, Lhnd;->d(Ljava/lang/String;)V

    new-instance p1, Lhma;

    const/16 v1, 0xa

    invoke-direct {p1, p2, v1}, Lhma;-><init>(Ljwb;I)V

    invoke-virtual {v0, p1}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance p1, Lhma;

    const/16 v1, 0xb

    invoke-direct {p1, p2, v1}, Lhma;-><init>(Ljwb;I)V

    invoke-virtual {v0, p1}, Lhnd;->f(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3}, Lhnd;->g(Lhna;)V

    invoke-virtual {v0}, Lhnd;->a()Lhne;

    move-result-object p1

    iput-object p1, p0, Lhnf;->b:Lhmz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized bG(Lhna;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhnf;->b:Lhmz;

    invoke-interface {v0, p1}, Lhmz;->bG(Lhna;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
