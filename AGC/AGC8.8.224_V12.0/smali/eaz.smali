.class public final Leaz;
.super Ljava/lang/Object;

# interfaces
.implements Leco;


# instance fields
.field final synthetic a:Lewa;

.field final synthetic b:Lgkr;


# direct methods
.method public constructor <init>(Lewa;Lgkr;[B[B)V
    .locals 0

    iput-object p1, p0, Leaz;->a:Lewa;

    iput-object p2, p0, Leaz;->b:Lgkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbkc;)V
    .locals 4

    iget-object v0, p0, Leaz;->a:Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    const-string v1, "DngCallback"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leaz;->a:Lewa;

    iget-object v0, v0, Lewa;->n:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfxn;

    iget-object v1, p0, Leaz;->b:Lgkr;

    invoke-virtual {v0, v1}, Lfxn;->c(Lgkr;)Lfxm;

    move-result-object v0

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lfxm;->b:Lkph;

    invoke-interface {p1}, Lkph;->f()V

    iget-object p1, v0, Lfxm;->a:Lgpo;

    invoke-interface {p1}, Lgpo;->h()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    iget-object v1, v0, Lfxm;->c:Lfxn;

    iget-object v1, v1, Lfxn;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lfqt;

    const/4 v3, 0x7

    invoke-direct {v2, v0, p1, v3}, Lfqt;-><init>(Lfxm;Ljava/nio/ByteBuffer;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Leaz;->a:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
