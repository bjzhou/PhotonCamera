.class public final Llfw;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic b:I

.field private static final c:Lnak;

.field private static final d:Llfw;

.field private static volatile e:Z

.field private static volatile f:Llfw;


# instance fields
.field public final a:Llfx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/libraries/performance/primes/Primes"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llfw;->c:Lnak;

    new-instance v0, Llfw;

    new-instance v1, Llfv;

    invoke-direct {v1}, Llfv;-><init>()V

    invoke-direct {v0, v1}, Llfw;-><init>(Llfx;)V

    sput-object v0, Llfw;->d:Llfw;

    const/4 v1, 0x1

    sput-boolean v1, Llfw;->e:Z

    sput-object v0, Llfw;->f:Llfw;

    return-void
.end method

.method public constructor <init>(Llfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llfw;->a:Llfx;

    return-void
.end method

.method public static declared-synchronized a(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 4

    const-class v0, Llfw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llfw;->f:Llfw;

    sget-object v2, Llfw;->d:Llfw;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Llho;->k()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Llfw;->c:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Primes.initialize() should only be called from the main thread."

    const/16 v3, 0x1176

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p0, Llfw;

    sput-object p0, Llfw;->f:Llfw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
