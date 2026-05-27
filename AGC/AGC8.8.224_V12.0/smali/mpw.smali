.class public final Lmpw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmrq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    new-instance v0, Lmpu;

    invoke-direct {v0}, Lmpu;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v0, Lmpv;

    invoke-direct {v0}, Lmpv;-><init>()V

    :goto_0
    sput-object v0, Lmpw;->a:Lmrq;

    return-void
.end method
