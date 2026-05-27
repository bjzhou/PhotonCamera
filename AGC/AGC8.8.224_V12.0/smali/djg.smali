.class public final Ldjg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgwu;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/FallbackJpegsRestorer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjg;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgwu;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldjg;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ldjg;->b:Lgwu;

    iput-object p2, p0, Ldjg;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
