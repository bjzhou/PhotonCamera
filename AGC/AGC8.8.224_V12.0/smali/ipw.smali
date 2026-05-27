.class public final Lipw;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lj$/time/Duration;

.field private static final e:Lj$/time/Duration;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkaq;

.field public final c:Ljde;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljde;

.field private final i:Ljde;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lipw;->d:Lj$/time/Duration;

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lipw;->e:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lkaq;Ljde;Ljde;Ljde;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lipw;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lipw;->g:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lipw;->f:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lipw;->b:Lkaq;

    iput-object p3, p0, Lipw;->c:Ljde;

    iput-object p4, p0, Lipw;->h:Ljde;

    iput-object p5, p0, Lipw;->i:Ljde;

    return-void
.end method

.method private final f()Ljava/util/Set;
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lipw;->h:Ljde;

    iget-object v1, v1, Ljde;->i:Ljdh;

    const/4 v2, 0x1

    invoke-static {v2}, Ljhp;->S(Z)V

    new-instance v2, Ljqs;

    invoke-direct {v2, v1}, Ljqs;-><init>(Ljdh;)V

    invoke-virtual {v1, v2}, Ljdh;->b(Ljec;)V

    sget-object v1, Ljsn;->b:Ljsn;

    invoke-static {v2, v1}, Ljhp;->ad(Ljdl;Ljhf;)Ljot;

    move-result-object v1

    iget-object v2, p0, Lipw;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lipu;

    invoke-direct {v3, p0, v0}, Lipu;-><init>(Lipw;Lnph;)V

    invoke-virtual {v1, v2, v3}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    :try_start_0
    sget-object v1, Lipw;->e:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lipw;->b:Lkaq;

    const-string v2, "Failed to getNodesByCapabilitySync."

    invoke-interface {v1, v2, v0}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lipw;->f()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljss;

    iget-object v3, p0, Lipw;->b:Lkaq;

    iget-object v4, v2, Ljss;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Check node: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v3, v2, Ljss;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v2, Ljss;->a:Ljava/lang/String;

    iget-boolean v3, v2, Ljss;->d:Z

    if-eqz v3, :cond_3

    iget-object v0, v2, Ljss;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iget-object v2, p0, Lipw;->b:Lkaq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findBestNodeSync() - Found node id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    :goto_2
    iget-object v0, p0, Lipw;->b:Lkaq;

    const-string v2, "findBestNode failed!"

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lipw;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lgwr;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, p2, v2}, Lgwr;-><init>(Lipw;Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lipw;->i:Ljde;

    iget-object v1, v1, Ljde;->i:Ljdh;

    new-instance v2, Ljsq;

    invoke-direct {v2, v1}, Ljsq;-><init>(Ljdh;)V

    invoke-virtual {v1, v2}, Ljdh;->b(Ljec;)V

    sget-object v1, Ljsn;->c:Ljsn;

    invoke-static {v2, v1}, Ljhp;->ad(Ljdl;Ljhf;)Ljot;

    move-result-object v1

    iget-object v2, p0, Lipw;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lipt;

    invoke-direct {v3, p0, v0}, Lipt;-><init>(Lipw;Lnph;)V

    invoke-virtual {v1, v2, v3}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    :try_start_0
    sget-object v1, Lipw;->d:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lipw;->b:Lkaq;

    const-string v2, "Failed to process isWearDeviceExistSync."

    invoke-interface {v1, v2, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lipw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lipw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lipw;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lipw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lipw;->e(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lipw;->c:Ljde;

    iget-object v1, v1, Ljde;->i:Ljdh;

    new-instance v2, Ljsl;

    invoke-direct {v2, v1, p1, p2, p3}, Ljsl;-><init>(Ljdh;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Ljdh;->b(Ljec;)V

    sget-object p1, Ljsn;->a:Ljsn;

    invoke-static {v2, p1}, Ljhp;->ad(Ljdl;Ljhf;)Ljot;

    move-result-object p1

    iget-object p3, p0, Lipw;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lipv;

    invoke-direct {v1, p0, v0, p2}, Lipv;-><init>(Lipw;Lnph;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v1}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    const-string p1, "/sending_time"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "/preview"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lipw;->b:Lkaq;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() - Message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sent: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkaq;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object p1, Lipw;->d:Lj$/time/Duration;

    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    iget-object p2, p0, Lipw;->b:Lkaq;

    const-string p3, "sendMessage() - Timeout to get result."

    invoke-interface {p2, p3, p1}, Lkaq;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
