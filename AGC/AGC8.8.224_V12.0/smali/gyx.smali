.class public final Lgyx;
.super Ljava/lang/Object;

# interfaces
.implements Lgyo;
.implements Lkad;


# instance fields
.field public final a:Lkai;

.field final synthetic b:Lgyy;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lgyy;Lkai;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lgyx;->b:Lgyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgyx;->a:Lkai;

    iput-object p3, p0, Lgyx;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgyx;->b:Lgyy;

    iget-object v0, v0, Lgyy;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgyx;->b:Lgyy;

    invoke-virtual {p1}, Lgyy;->c()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgyx;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lgps;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lgyx;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lgyx;->b:Lgyy;

    iget-object v0, v0, Lgyy;->a:Lgzi;

    invoke-virtual {v0, p0}, Lgzi;->h(Lgyo;)V

    return-void
.end method
