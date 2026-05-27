.class public final Lllp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Logd;

.field public final c:Lnox;

.field public final d:Lmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lllp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llij;Lnox;Ljava/util/concurrent/Executor;Logd;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lllp;->b:Logd;

    iput-object p2, p0, Lllp;->c:Lnox;

    invoke-virtual {p1, p3, p4, p5}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Lllp;->d:Lmap;

    return-void
.end method
