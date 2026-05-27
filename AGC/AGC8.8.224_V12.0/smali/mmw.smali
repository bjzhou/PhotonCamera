.class public final synthetic Lmmw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmnb;

.field public final synthetic b:Lnph;

.field public final synthetic c:Lmmz;


# direct methods
.method public synthetic constructor <init>(Lmnb;Lnph;Lmmz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmmw;->a:Lmnb;

    iput-object p2, p0, Lmmw;->b:Lnph;

    iput-object p3, p0, Lmmw;->c:Lmmz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lmmw;->a:Lmnb;

    iget-object v1, p0, Lmmw;->b:Lnph;

    iget-object v2, p0, Lmmw;->c:Lmmz;

    :try_start_0
    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lmnb;->c:Lnph;

    invoke-virtual {v3, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, v0, Lmnb;->c:Lnph;

    invoke-virtual {v2, v0}, Lmmz;->f(Lnou;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lmmz;->f(Lnou;)Z

    return-void
.end method
