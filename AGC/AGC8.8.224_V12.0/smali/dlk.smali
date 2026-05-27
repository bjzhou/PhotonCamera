.class public final Ldlk;
.super Ljava/lang/Object;

# interfaces
.implements Ldli;


# static fields
.field static final a:Lj$/time/Duration;

.field static final b:Lj$/time/Duration;

.field public static final c:Lj$/time/Duration;


# instance fields
.field public final d:Lkaq;

.field public final e:Lj$/time/Clock;

.field public f:Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

.field public g:Ldlm;

.field public h:Ldlv;

.field private final i:Lnox;

.field private final j:Ljava/util/concurrent/Executor;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Ldlk;->a:Lj$/time/Duration;

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Lj$/time/Duration;->ofHours(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Ldlk;->b:Lj$/time/Duration;

    const-wide/16 v0, 0x24

    invoke-static {v0, v1}, Lj$/time/Duration;->ofHours(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Ldlk;->c:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Lnox;Ljava/util/concurrent/Executor;Lj$/time/Clock;Lkaq;Loiw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldlk;->a:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Ldlk;->k:J

    const-string v0, "ShotTracker"

    invoke-interface {p4, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v0

    iput-object v0, p0, Ldlk;->d:Lkaq;

    iput-object p1, p0, Ldlk;->i:Lnox;

    iput-object p2, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ldlk;->e:Lj$/time/Clock;

    new-instance p1, Lblx;

    const/16 p3, 0xd

    invoke-direct {p1, p0, p4, p5, p3}, Lblx;-><init>(Ldlk;Lkaq;Loiw;I)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j(JLj$/time/Instant;Ljava/lang/String;)Ldma;
    .locals 1

    new-instance v0, Ldma;

    invoke-direct {v0}, Ldma;-><init>()V

    iput-wide p0, v0, Ldma;->b:J

    const/4 p0, 0x0

    iput p0, v0, Ldma;->a:I

    invoke-virtual {p2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide p0

    iput-wide p0, v0, Ldma;->c:J

    iput-object p3, v0, Ldma;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldma;

    iget-wide v2, v1, Ldma;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Ldma;->c:J

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ldma;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    iget-object v0, p0, Ldlk;->i:Lnox;

    new-instance v1, Lbdj;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lbdj;-><init>(Ldlk;I)V

    invoke-interface {v0, v1}, Lnox;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/4 v6, 0x5

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/16 v6, 0x9

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(JLj$/time/Instant;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v8, Lfqs;

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lfqs;-><init>(Ldlk;JLj$/time/Instant;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/4 v6, 0x6

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/4 v6, 0x4

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/4 v6, 0x7

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(JLj$/time/Instant;)V
    .locals 8

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ldlk;JLj$/time/Instant;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lgxz;Lj$/time/Instant;Lgya;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ldlk;->j:Ljava/util/concurrent/Executor;

    new-instance v7, Lapv;

    const/4 v6, 0x5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lapv;-><init>(Ldlk;Lgxz;Lj$/time/Instant;Lgya;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(JLj$/time/Instant;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Ldlk;->g:Ldlm;

    invoke-virtual {p3}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v5

    invoke-interface {v4, p1, p2, v5, v6}, Ldlm;->a(JJ)I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Ldlk;->h:Ldlv;

    invoke-static {p1, p2, p3, p4}, Ldlk;->j(JLj$/time/Instant;Ljava/lang/String;)Ldma;

    move-result-object v5

    invoke-interface {v4, v5}, Ldlv;->b(Ldma;)V

    return-void

    :cond_0
    iget-object v5, p0, Ldlk;->d:Lkaq;

    const-string v6, "logImpl updated %d rows for id=%d with time=%s (expected 1)"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    aput-object p3, v7, v0

    invoke-static {v6, v7}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lkaq;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    iget-object v5, p0, Ldlk;->d:Lkaq;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    aput-object p3, v2, v3

    aput-object p4, v2, v0

    const-string p1, "SQLite error in logImpl for id=%d time=%s msg=\'%s\'"

    invoke-static {p1, v2}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1, v4}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Ldlk;->i:Lnox;

    new-instance v1, Ldgg;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Ldgg;-><init>(Ldlk;I)V

    iget-wide v2, p0, Ldlk;->k:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lnox;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    sget-object v0, Ldlk;->b:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Ldlk;->k:J

    return-void
.end method
