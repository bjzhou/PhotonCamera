.class final Lbo;
.super Lbu;


# instance fields
.field final synthetic a:Lbw;


# direct methods
.method public constructor <init>(Lbw;)V
    .locals 0

    iput-object p1, p0, Lbo;->a:Lbw;

    invoke-direct {p0}, Lbu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbo;->a:Lbw;

    iget-object v0, v0, Lbw;->ac:Lbza;

    invoke-virtual {v0}, Lbza;->g()V

    iget-object v0, p0, Lbo;->a:Lbw;

    invoke-static {v0}, Lall;->c(Laqn;)V

    iget-object v0, p0, Lbo;->a:Lbw;

    iget-object v0, v0, Lbw;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbo;->a:Lbw;

    iget-object v1, v1, Lbw;->ac:Lbza;

    invoke-virtual {v1, v0}, Lbza;->h(Landroid/os/Bundle;)V

    return-void
.end method
