.class public final synthetic Lljc;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lljg;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lljg;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lljc;->a:Lljg;

    iput-object p2, p0, Lljc;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lljc;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    iget-object v0, p0, Lljc;->a:Lljg;

    iget-object v1, p0, Lljc;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lljc;->c:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lljg;->c:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lliv;

    invoke-virtual {v0, v2, v1}, Lljg;->g(ILliv;)Lnou;

    move-result-object v0

    :goto_0
    return-object v0
.end method
