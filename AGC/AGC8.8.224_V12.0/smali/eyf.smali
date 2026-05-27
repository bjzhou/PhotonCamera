.class public final Leyf;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# instance fields
.field private final a:Lhmz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljwb;Lhna;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    sget-object p1, Lhmv;->a:Lhmw;

    iput-object p1, p0, Leyf;->a:Lhmz;

    return-void

    :cond_0
    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object p4

    invoke-virtual {p4, p1}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string p1, "LensLite"

    invoke-virtual {p4, p1}, Lhnd;->d(Ljava/lang/String;)V

    new-instance p1, Levi;

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Levi;-><init>(Ljwb;I)V

    invoke-virtual {p4, p1}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance p1, Levi;

    const/4 v0, 0x6

    invoke-direct {p1, p2, v0}, Levi;-><init>(Ljwb;I)V

    invoke-virtual {p4, p1}, Lhnd;->f(Ljava/lang/Runnable;)V

    invoke-virtual {p4, p3}, Lhnd;->g(Lhna;)V

    invoke-virtual {p4}, Lhnd;->a()Lhne;

    move-result-object p1

    iput-object p1, p0, Leyf;->a:Lhmz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized bG(Lhna;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leyf;->a:Lhmz;

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
