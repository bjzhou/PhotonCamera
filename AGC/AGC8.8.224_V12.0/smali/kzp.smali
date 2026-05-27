.class final Lkzp;
.super Ljava/lang/Object;

# interfaces
.implements Lkzg;


# instance fields
.field final synthetic a:Llaa;

.field final synthetic b:Llhe;


# direct methods
.method public constructor <init>(Llaa;Llhe;[B)V
    .locals 0

    iput-object p1, p0, Lkzp;->a:Llaa;

    iput-object p2, p0, Lkzp;->b:Llhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;
    .locals 1

    iget-object v0, p0, Lkzp;->b:Llhe;

    invoke-virtual {v0}, Llhe;->f()Lkzf;

    move-result-object v0

    invoke-static {p1}, Llpm;->o(Ljava/lang/Object;)Lkye;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lkzf;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkzp;->a:Llaa;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkzp;->b:Llhe;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "thenAlways["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
