.class public final Lbtt;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Z

.field private c:I

.field private d:I

.field private final e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbtv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbtv;-><init>(I)V

    iput-object v0, p0, Lbtt;->e:Ljava/util/concurrent/ThreadFactory;

    iput-boolean p1, p0, Lbtt;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lbtx;
    .locals 11

    iget-object v0, p0, Lbtt;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lbtt;->c:I

    iget v3, p0, Lbtt;->d:I

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lbtw;

    iget-object v1, p0, Lbtt;->e:Ljava/util/concurrent/ThreadFactory;

    iget-object v9, p0, Lbtt;->a:Ljava/lang/String;

    iget-boolean v10, p0, Lbtt;->b:Z

    invoke-direct {v8, v1, v9, v10}, Lbtw;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lbtx;

    invoke-direct {v1, v0}, Lbtx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lbtt;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name must be non-null and non-empty, but given: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lbtt;->c:I

    iput p1, p0, Lbtt;->d:I

    return-void
.end method
