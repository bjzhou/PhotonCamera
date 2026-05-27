.class final Louq;
.super Ljava/lang/Object;

# interfaces
.implements Loqh;


# instance fields
.field public final a:Lous;

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Loku;


# direct methods
.method public constructor <init>(Lous;JLjava/lang/Object;Loku;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Louq;->a:Lous;

    iput-wide p2, p0, Louq;->b:J

    iput-object p4, p0, Louq;->c:Ljava/lang/Object;

    iput-object p5, p0, Louq;->d:Loku;

    return-void
.end method


# virtual methods
.method public final cN()V
    .locals 6

    iget-object v0, p0, Louq;->a:Lous;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Louq;->b:J

    invoke-virtual {v0}, Lous;->c()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p0, Louq;->b:J

    invoke-static {v1, v2, v3}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-wide v2, p0, Louq;->b:J

    sget-object v4, Lout;->a:Loxb;

    invoke-static {v1, v2, v3, v4}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0}, Lous;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
