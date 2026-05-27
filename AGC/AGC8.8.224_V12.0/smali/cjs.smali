.class public final Lcjs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljui;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Lnou;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjs;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcjs;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcjs;->b:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjs;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcjs;->b:Lnou;

    new-instance v1, Lccq;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lccq;-><init>(Lcjs;Ljava/lang/Runnable;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method
