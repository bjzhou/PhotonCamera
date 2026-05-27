.class public final Lhoj;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field public final synthetic b:Lhol;


# direct methods
.method public constructor <init>(Lhol;Lkeb;)V
    .locals 0

    iput-object p1, p0, Lhoj;->b:Lhol;

    iput-object p2, p0, Lhoj;->a:Lkeb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bq()V
    .locals 3

    iget-object v0, p0, Lhoj;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    iget-object v0, p0, Lhoj;->b:Lhol;

    iget-object v1, v0, Lhol;->aa:Lkee;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhol;->N:Lkef;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkef;->l(Lkee;)V

    :cond_0
    iget-object v0, p0, Lhoj;->b:Lhol;

    const/4 v1, 0x0

    iput-object v1, v0, Lhol;->aa:Lkee;

    iget-object v0, v0, Lhol;->l:Ljuh;

    new-instance v1, Lhma;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lhma;-><init>(Lhoj;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
