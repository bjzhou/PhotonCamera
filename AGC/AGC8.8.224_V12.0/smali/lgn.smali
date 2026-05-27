.class public final Llgn;
.super Ljava/lang/Object;

# interfaces
.implements Llgl;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/federatedlearning/FederatedLearningExampleStoreImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llgn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llgn;->b:Landroid/content/Context;

    iput-object p2, p0, Llgn;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic d(Ljot;)Ljot;
    .locals 0

    invoke-virtual {p0}, Ljot;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljkh;

    invoke-interface {p0}, Ljkh;->a()Ljot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljot;)Ljot;
    .locals 0

    invoke-virtual {p0}, Ljot;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljkh;

    invoke-interface {p0}, Ljkh;->b()Ljot;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g()Lnak;
    .locals 1

    sget-object v0, Llgn;->a:Lnak;

    return-object v0
.end method

.method public static synthetic h(Lnvt;Lnvt;)Lpar;
    .locals 4

    sget-object v0, Lpar;->b:Lpar;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lpau;->b:Lpau;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget-object v2, Lpas;->c:Lpas;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    sget-object v3, Lpaq;->b:Lpaq;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnwn;->az(Lnvt;)V

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lpaq;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lpas;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v3, Lpas;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v3, Lpas;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lpas;

    const-string v3, "token"

    invoke-virtual {v1, v3, v2}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    sget-object v2, Lpas;->c:Lpas;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    sget-object v3, Lpaq;->b:Lpaq;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnwn;->az(Lnvt;)V

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lpaq;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lpas;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v3, Lpas;->b:Ljava/lang/Object;

    iput p1, v3, Lpas;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lpas;

    const-string p1, "application_package"

    invoke-virtual {v1, p1, p0}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lpau;

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lpar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lpar;->a:Lpau;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lpar;

    return-object p0
.end method

.method private final i(Ljava/lang/String;Ljoj;)V
    .locals 7

    invoke-static {p1}, Lnpr;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    new-instance v0, Llgm;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Llgm;-><init>(Llgn;Ljava/lang/String;Ljava/lang/String;ILjoj;)V

    iget-object p1, p0, Llgn;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Llgn;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnvt;->w(Ljava/lang/String;)Lnvt;

    move-result-object v0

    iget-object v1, p0, Llgn;->b:Landroid/content/Context;

    invoke-static {v1}, Llgp;->a(Landroid/content/Context;)Lkte;

    move-result-object v1

    new-instance v2, Lhga;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lhga;-><init>(Lnvt;I)V

    invoke-static {p2, v2}, Llyh;->H(Ljava/util/List;Lmqi;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lhop;->f:Lhop;

    invoke-static {p2, v0}, Llyh;->H(Ljava/util/List;Lmqi;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lkte;->h(Ljava/lang/String;)V

    iget-object v0, v1, Lkte;->d:Ljava/lang/Object;

    iget-object v2, v1, Lkte;->b:Ljava/lang/Object;

    sget-wide v3, Ljkm;->a:J

    check-cast v0, Landroid/content/Context;

    const-string v3, "jobscheduler"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    if-eqz v3, :cond_2

    const v4, 0xcee2684

    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v4, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v6, Ljkm;->a:J

    invoke-virtual {v0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    sget-wide v6, Ljkm;->a:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, v1, Lkte;->a:Ljava/lang/Object;

    new-instance v1, Ldvo;

    const/16 v2, 0xa

    invoke-direct {v1, p1, p2, v2}, Ldvo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    check-cast v0, Ljks;

    invoke-virtual {v0, v1}, Ljks;->a(Lmqi;)Lnou;

    move-result-object p1

    new-instance p2, Lcnr;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcnr;-><init>(I)V

    iget-object v0, p0, Llgn;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ExampleStrDataTtlSvc"

    const-string v0, "Buggy schedule() implementation!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    new-instance p1, Ljkq;

    invoke-direct {p1}, Ljkq;-><init>()V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljmr;->d:Ljmr;

    invoke-direct {p0, p1, v0}, Llgn;->i(Ljava/lang/String;Ljoj;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljmr;->c:Ljmr;

    invoke-direct {p0, p1, v0}, Llgn;->i(Ljava/lang/String;Ljoj;)V

    return-void
.end method

.method public synthetic f(Ljava/lang/String;Ljava/lang/String;ILjoj;)Ljot;
    .locals 3

    iget-object v0, p0, Llgn;->b:Landroid/content/Context;

    iget-object v1, p0, Llgn;->c:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljkj;->a()Ljki;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljki;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljki;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljki;->c(I)V

    invoke-virtual {v2}, Ljki;->a()Ljkj;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljlw;->c(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljkj;)Ljot;

    move-result-object p1

    iget-object p2, p0, Llgn;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p4}, Ljot;->a(Ljava/util/concurrent/Executor;Ljoj;)Ljot;

    move-result-object p1

    return-object p1
.end method
