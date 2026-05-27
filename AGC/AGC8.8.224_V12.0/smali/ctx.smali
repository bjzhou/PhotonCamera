.class final Lctx;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcty;


# direct methods
.method public constructor <init>(Lcty;)V
    .locals 0

    iput-object p1, p0, Lctx;->a:Lcty;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lctx;->a:Lcty;

    iget-object v1, v0, Lcty;->d:Lmrg;

    iget-boolean v1, v1, Lmrg;->a:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcty;->c:Ljuh;

    new-instance v1, Lctw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lctw;-><init>(Lctx;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
