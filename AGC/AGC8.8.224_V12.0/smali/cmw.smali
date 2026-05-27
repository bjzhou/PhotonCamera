.class public abstract Lcmw;
.super Landroid/app/job/JobService;


# static fields
.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcmw;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Lnou;
.end method

.method public abstract d()Lnou;
.end method

.method protected abstract e()Ljava/util/concurrent/ExecutorService;
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p0}, Lcmw;->c()Lnou;

    move-result-object v0

    invoke-static {v0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v0

    new-instance v1, Lcmq;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcmq;-><init>(Lcmw;I)V

    invoke-virtual {p0}, Lcmw;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Lcoi;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcoi;-><init>(Lcmw;Landroid/app/job/JobParameters;I)V

    invoke-virtual {p0}, Lcmw;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return v2
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
