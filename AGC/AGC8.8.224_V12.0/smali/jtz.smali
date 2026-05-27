.class public final Ljtz;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final a:Lkai;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkai;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljtz;->a:Lkai;

    iput-object p2, p0, Ljtz;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljtz;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ljoq;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Ljoq;-><init>(Ljtz;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
