.class final Lkzw;
.super Ljava/lang/Object;


# instance fields
.field public a:Lkzw;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/Runnable;

.field private final d:Llaa;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzw;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkzw;->c:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-object p1, p0, Lkzw;->d:Llaa;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzw;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkzw;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lkzw;->d:Llaa;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkzw;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkzw;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkzw;->d:Llaa;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    invoke-virtual {v1, v0}, Llaa;->m(Lkzd;)V

    return-void

    :cond_0
    throw v0
.end method
