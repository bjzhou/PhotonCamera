.class public final Ljor;
.super Ljava/lang/Object;

# interfaces
.implements Ljou;
.implements Ljop;
.implements Ljoo;
.implements Ljom;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljox;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljor;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljor;->b:Ljox;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 3

    iget-object v0, p0, Ljor;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ljoq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ljoq;-><init>(Ljor;Ljot;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ljor;->b:Ljox;

    invoke-virtual {v0}, Ljox;->p()V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Ljor;->b:Ljox;

    invoke-virtual {v0, p1}, Ljox;->n(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljor;->b:Ljox;

    invoke-virtual {v0, p1}, Ljox;->o(Ljava/lang/Object;)V

    return-void
.end method
