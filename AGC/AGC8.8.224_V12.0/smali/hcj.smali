.class public final synthetic Lhcj;
.super Ljava/lang/Object;

# interfaces
.implements Lhco;


# instance fields
.field public final synthetic a:Lhcq;

.field public final synthetic b:Lkma;


# direct methods
.method public synthetic constructor <init>(Lhcq;Lkma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcj;->a:Lhcq;

    iput-object p2, p0, Lhcj;->b:Lkma;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lhcj;->a:Lhcq;

    iget-object v1, p0, Lhcj;->b:Lkma;

    invoke-virtual {v1}, Lkma;->k()Lkpb;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v0, v0, Lhcq;->B:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    check-cast p1, Lhdf;

    iget-boolean v2, p1, Lhdf;->d:Z

    invoke-static {v2}, Lmoz;->p(Z)V

    iget-boolean v2, p1, Lhdf;->e:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Lhdf;->a:Lhdy;

    instance-of v2, p1, Lhdv;

    if-eqz v2, :cond_0

    check-cast p1, Lhdv;

    invoke-interface {p1, v1, v0}, Lhdv;->h(Lkpb;I)V

    return-void

    :cond_0
    invoke-interface {v1}, Lkpb;->close()V

    return-void

    :cond_1
    sget-object p1, Lhcq;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Unable to fork ref counted image"

    const/16 v1, 0xd8a

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method
