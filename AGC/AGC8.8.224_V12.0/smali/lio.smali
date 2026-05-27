.class public final Llio;
.super Ljava/lang/Object;


# static fields
.field static final a:J


# instance fields
.field public final b:Lmqi;

.field public volatile c:Z

.field private final d:Lmrg;

.field private volatile e:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Llio;->a:J

    return-void
.end method

.method public constructor <init>(Lmrq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llio;->c:Z

    new-instance v0, Lhga;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lhga;-><init>(Llio;I)V

    iput-object v0, p0, Llio;->b:Lmqi;

    invoke-static {p1}, Lmrg;->c(Lmrq;)Lmrg;

    move-result-object p1

    iput-object p1, p0, Llio;->d:Lmrg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llio;->e:Ljava/lang/Process;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Llio;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llio;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Llio;->e:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Llio;->c:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Llio;->d:Lmrg;

    iget-boolean v1, v0, Lmrg;->a:Z

    if-eqz v1, :cond_4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-wide v2, Llio;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Llio;->d:Lmrg;

    invoke-virtual {v0}, Lmrg;->d()V

    iget-object v0, p0, Llio;->d:Lmrg;

    invoke-virtual {v0}, Lmrg;->e()V

    iget-object v0, p0, Llio;->b:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Process;

    iput-object p1, p0, Llio;->e:Ljava/lang/Process;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
