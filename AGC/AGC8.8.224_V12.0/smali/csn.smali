.class final Lcsn;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcsp;


# direct methods
.method public constructor <init>(Lcsp;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcsn;->a:Lcsp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcsn;->a:Lcsp;

    iget-boolean v0, p1, Lcsp;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcsp;->a:Lcsk;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcsk;->d(IZ)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lcsp;->d:Z

    if-nez v0, :cond_1

    iput-boolean v1, p1, Lcsp;->d:Z

    iget-object p1, p1, Lcsp;->a:Lcsk;

    invoke-virtual {p1}, Lcsk;->b()V

    :cond_1
    return-void
.end method
