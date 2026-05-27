.class public final synthetic Ledv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntFloatConsumer;


# instance fields
.field public final synthetic a:Leea;


# direct methods
.method public synthetic constructor <init>(Leea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledv;->a:Leea;

    return-void
.end method


# virtual methods
.method public final accept(IF)V
    .locals 1

    iget-object p1, p0, Ledv;->a:Leea;

    iget-object v0, p1, Leea;->l:Leec;

    invoke-virtual {v0}, Leec;->i()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object p1, p1, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->i()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lect;

    invoke-interface {p1, p2}, Lect;->a(F)V

    return-void
.end method
