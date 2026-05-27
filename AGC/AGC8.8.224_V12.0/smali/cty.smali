.class public final Lcty;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lhxb;

.field public final b:Lipk;

.field public final c:Ljuh;

.field public final d:Lmrg;

.field public e:Lmqp;

.field private final f:Ljava/util/Timer;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/TimerTask;

.field private i:Lj$/time/Duration;

.field private j:I


# direct methods
.method public constructor <init>(Lhxb;Lipk;Ljuh;Lmrg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcty;->f:Ljava/util/Timer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcty;->g:Ljava/util/Map;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lcty;->e:Lmqp;

    new-instance v0, Lctx;

    invoke-direct {v0, p0}, Lctx;-><init>(Lcty;)V

    iput-object v0, p0, Lcty;->h:Ljava/util/TimerTask;

    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    iput-object v0, p0, Lcty;->i:Lj$/time/Duration;

    const/4 v0, -0x1

    iput v0, p0, Lcty;->j:I

    iput-object p1, p0, Lcty;->a:Lhxb;

    iput-object p2, p0, Lcty;->b:Lipk;

    iput-object p3, p0, Lcty;->c:Ljuh;

    iput-object p4, p0, Lcty;->d:Lmrg;

    return-void
.end method

.method private final g(I)V
    .locals 3

    iget-object v0, p0, Lcty;->d:Lmrg;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    iget-object v1, p0, Lcty;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcty;->i:Lj$/time/Duration;

    invoke-virtual {v0, v2}, Lj$/time/Duration;->minus(Lj$/time/Duration;)Lj$/time/Duration;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcty;->i:Lj$/time/Duration;

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 4

    iget-object v0, p0, Lcty;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcty;->d:Lmrg;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object p1, p0, Lcty;->i:Lj$/time/Duration;

    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcty;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/Duration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcty;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcty;->g(I)V

    :cond_0
    iput p1, p0, Lcty;->j:I

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcty;->d:Lmrg;

    iget-boolean v1, v0, Lmrg;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmrg;->f()V

    iget-object v0, p0, Lcty;->c:Ljuh;

    new-instance v1, Lcqf;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcty;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcty;->b:Lipk;

    const-string v1, "/video_state_paused"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lipk;->l(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcty;->d:Lmrg;

    iget-boolean v1, v0, Lmrg;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmrg;->e()V

    iget-object v0, p0, Lcty;->c:Ljuh;

    new-instance v1, Lctw;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lctw;-><init>(Lcty;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcty;->b:Lipk;

    const-string v1, "/video_state_resumed"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lipk;->l(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lcty;->d:Lmrg;

    invoke-virtual {v0}, Lmrg;->e()V

    iget-object v1, p0, Lcty;->f:Ljava/util/Timer;

    iget-object v2, p0, Lcty;->h:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcty;->d:Lmrg;

    iget-boolean v1, v0, Lmrg;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmrg;->f()V

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lcty;->e:Lmqp;

    iget v0, p0, Lcty;->j:I

    invoke-direct {p0, v0}, Lcty;->g(I)V

    iget-object v0, p0, Lcty;->b:Lipk;

    const-string v1, "/video_state_stopped"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lipk;->l(Ljava/lang/String;J)V

    iget-object v0, p0, Lcty;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcty;->h:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
