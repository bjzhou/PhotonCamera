.class public final Lgfq;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lkai;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkai;)V
    .locals 0

    iput-object p1, p0, Lgfq;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lgfq;->b:Lkai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Lkab;)V
    .locals 3

    iget-object v0, p0, Lgfq;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lfqt;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lgfq;Lkab;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
