.class final Lhoh;
.super Lkfg;


# instance fields
.field final synthetic a:Lhol;


# direct methods
.method public constructor <init>(Lhol;)V
    .locals 0

    iput-object p1, p0, Lhoh;->a:Lhol;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 1

    iget-object v0, p0, Lhoh;->a:Lhol;

    iget-object v0, v0, Lhol;->r:Lccg;

    invoke-virtual {v0, p1}, Lkfg;->bC(Lkou;)V

    iget-object v0, p0, Lhoh;->a:Lhol;

    iget-object v0, v0, Lhol;->L:Lfzj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkfg;->bC(Lkou;)V

    :cond_0
    return-void
.end method
