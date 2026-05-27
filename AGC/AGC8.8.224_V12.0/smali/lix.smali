.class public final Llix;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lmrl;

.field public final b:Lmrl;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Loiw;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:J

.field public final g:Lmap;


# direct methods
.method public constructor <init>(Lmrl;Lmrl;Ljava/util/concurrent/Executor;Logd;Llij;Loiw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llix;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llix;->f:J

    iput-object p1, p0, Llix;->a:Lmrl;

    iput-object p2, p0, Llix;->b:Lmrl;

    iput-object p3, p0, Llix;->c:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    invoke-virtual {p5, p3, p4, p1}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llix;->g:Lmap;

    iput-object p6, p0, Llix;->d:Loiw;

    return-void
.end method
