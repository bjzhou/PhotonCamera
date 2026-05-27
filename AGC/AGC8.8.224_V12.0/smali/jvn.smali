.class final Ljvn;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lkai;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkai;)V
    .locals 0

    iput-object p1, p0, Ljvn;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljvn;->c:Lkai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljvn;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ljvn;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Ljvn;->a:Ljava/lang/Object;

    iget-object v0, p0, Ljvn;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ljvn;->c:Lkai;

    new-instance v2, Ljoq;

    const/16 v3, 0xa

    invoke-direct {v2, v1, p1, v3}, Ljoq;-><init>(Lkai;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
