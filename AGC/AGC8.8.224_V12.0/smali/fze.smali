.class public final Lfze;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Loiw;Loiw;)Lcik;
    .locals 7

    new-instance v6, Lapv;

    const/16 v5, 0xa

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lapv;-><init>(Ljava/util/concurrent/Executor;Loiw;Loiw;Ljava/util/concurrent/Executor;I)V

    const-string p0, "poststartup"

    invoke-static {v6, p0}, Lbze;->ah(Ljava/lang/Runnable;Ljava/lang/String;)Lcik;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkpb;)V
    .locals 0

    invoke-interface {p0}, Lkpb;->close()V

    return-void
.end method

.method public static c(Ljuf;Lnou;Lgre;)Lcik;
    .locals 7

    new-instance v6, Leow;

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Leow;-><init>(Ljuf;Lgre;Lnou;I[B)V

    const-string p0, "latch"

    invoke-static {v6, p0}, Lbze;->ah(Ljava/lang/Runnable;Ljava/lang/String;)Lcik;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static e(Lfjx;Lgsk;)Lfkx;
    .locals 2

    new-instance v0, Lfkv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lfkv;-><init>(Lfjx;Lgsk;[B[B)V

    return-object v0
.end method
