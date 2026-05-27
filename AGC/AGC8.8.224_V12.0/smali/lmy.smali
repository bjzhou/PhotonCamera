.class public final Llmy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field private static final e:Llmx;


# instance fields
.field public volatile b:Llnc;

.field public volatile c:Z

.field public volatile d:Llmx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/sampling/Sampler"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llmy;->a:Lnak;

    const v0, 0x7fffffff

    invoke-static {v0}, Llmx;->a(I)Llmx;

    move-result-object v0

    sput-object v0, Llmy;->e:Llmx;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llnb;Logd;ZLoiw;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p5, Llnb;->a:Llnc;

    iput-object p5, p0, Llmy;->b:Llnc;

    const/4 p5, 0x1

    iput-boolean p5, p0, Llmy;->c:Z

    sget-object p5, Llmy;->e:Llmx;

    iput-object p5, p0, Llmy;->d:Llmx;

    new-instance p5, Leeq;

    const/4 v7, 0x5

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Leeq;-><init>(Llmy;Landroid/content/Context;Logd;Ljava/util/concurrent/Executor;Llnb;Loiw;I)V

    invoke-static {p5, p2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method


# virtual methods
.method public final a(Logd;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llhh;

    invoke-interface {p1}, Llhh;->b()Z

    move-result v0

    iput-boolean v0, p0, Llmy;->c:Z

    invoke-interface {p1}, Llhh;->a()I

    move-result p1

    invoke-static {p1}, Llmx;->a(I)Llmx;

    move-result-object p1

    iput-object p1, p0, Llmy;->d:Llmx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Llmy;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Couldn\'t get config"

    const/16 v2, 0x11d0

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llmy;->c:Z

    return-void
.end method
