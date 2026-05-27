.class public final synthetic Lnsi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntConsumer;


# instance fields
.field public final synthetic a:Ledz;


# direct methods
.method public synthetic constructor <init>(Ledz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsi;->a:Ledz;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object p1, p0, Lnsi;->a:Ledz;

    sget-object v0, Leea;->a:Lnak;

    iget-object v0, p1, Ledz;->c:Leea;

    iget v0, v0, Leea;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v0, p1, Ledz;->c:Leea;

    const/4 v1, 0x4

    iput v1, v0, Leea;->s:I

    iget-object v0, p1, Ledz;->a:Leec;

    invoke-virtual {v0}, Leec;->m()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ledz;->a:Leec;

    invoke-virtual {v0}, Leec;->m()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecw;

    iget-object p1, p1, Ledz;->c:Leea;

    invoke-interface {v0, p1}, Lecw;->p(Leea;)V

    :cond_1
    return-void
.end method
