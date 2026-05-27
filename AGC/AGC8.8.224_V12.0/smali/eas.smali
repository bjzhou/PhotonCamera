.class public final synthetic Leas;
.super Ljava/lang/Object;

# interfaces
.implements Lect;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lewa;

.field public final synthetic c:Lgkr;


# direct methods
.method public synthetic constructor <init>(Lewa;Lgkr;Ljava/util/concurrent/atomic/AtomicBoolean;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leas;->b:Lewa;

    iput-object p2, p0, Leas;->c:Lgkr;

    iput-object p3, p0, Leas;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    invoke-static {p1}, Lcom/agc/widget/HDRProgress;->updateProgress(F)V

    iget-object v0, p0, Leas;->b:Lewa;

    iget-object v1, p0, Leas;->c:Lgkr;

    iget-object v2, p0, Leas;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v0, Lewa;->h:Ljava/lang/Object;

    const-string v4, "ProgressCallback"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgkr;->a:Ljava/lang/Object;

    sget-object v4, Lecd;->a:Lilz;

    invoke-interface {v3, v4, p1}, Lgaa;->a(Lilz;F)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->i()Lgya;

    move-result-object v2

    sget-object v3, Lgya;->b:Lgya;

    if-ne v2, v3, :cond_0

    const v2, 0x7f1403a1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Ljpw;->h(I[Ljava/lang/Object;)Ligf;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v2, 0x7f140448

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Ljpw;->h(I[Ljava/lang/Object;)Ligf;

    move-result-object p1

    :goto_0
    invoke-interface {v1, p1}, Lgxl;->Q(Ligf;)V

    :cond_1
    iget-object p1, v0, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
