.class final Lddz;
.super Lmdw;


# instance fields
.field final synthetic a:Ldea;


# direct methods
.method public constructor <init>(Ldea;Lmdx;)V
    .locals 0

    iput-object p1, p0, Lddz;->a:Ldea;

    invoke-direct {p0, p2}, Lmdw;-><init>(Lmdx;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lddz;->a:Ldea;

    iget-object v0, v0, Ldea;->c:Lddw;

    invoke-interface {v0, p1, p2}, Lddw;->c(J)V

    return-void
.end method

.method public final b(Lmdz;)V
    .locals 3

    iget-object v0, p0, Lddz;->a:Ldea;

    iget-object v0, v0, Ldea;->b:Ldes;

    iget-object v1, v0, Ldes;->d:Lkbi;

    new-instance v2, Ldeq;

    invoke-direct {v2, v0, p1}, Ldeq;-><init>(Ldes;Lmdz;)V

    invoke-virtual {v1, v2}, Lkbi;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
