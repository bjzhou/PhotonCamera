.class public final synthetic Lghq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lghu;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lghu;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghq;->a:Lghu;

    iput-object p2, p0, Lghq;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lghq;->a:Lghu;

    iget-object v1, p0, Lghq;->b:Lnph;

    iget-object v0, v0, Lghu;->a:Lgvu;

    invoke-interface {v0}, Lgvu;->b()Lnou;

    move-result-object v0

    new-instance v2, Lghs;

    invoke-direct {v2, v1}, Lghs;-><init>(Lnph;)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
