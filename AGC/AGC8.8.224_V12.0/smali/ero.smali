.class final Lero;
.super Ljava/lang/Object;

# interfaces
.implements Lhfv;


# instance fields
.field final synthetic a:Lert;


# direct methods
.method public constructor <init>(Lert;)V
    .locals 0

    iput-object p1, p0, Lero;->a:Lert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lero;->a:Lert;

    iget-boolean v1, v0, Lert;->C:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lert;->C:Z

    iget-object v1, v0, Lert;->e:Landroid/os/Handler;

    new-instance v2, Lerm;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lerm;-><init>(Lert;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lero;->a:Lert;

    iget-object v0, v0, Lert;->e:Landroid/os/Handler;

    new-instance v1, Lerm;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lerm;-><init>(Lero;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method
