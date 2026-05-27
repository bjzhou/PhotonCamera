.class final Liza;
.super Lizm;


# instance fields
.field final synthetic a:Lizc;


# direct methods
.method public constructor <init>(Lizc;Liyz;)V
    .locals 0

    iput-object p1, p0, Liza;->a:Lizc;

    invoke-direct {p0, p2}, Lizm;-><init>(Liyz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Liza;->a:Lizc;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v0}, Lizc;->D()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {v0, v1}, Liyv;->q(Ljava/lang/String;)V

    invoke-virtual {v0}, Lizc;->b()V

    return-void
.end method
