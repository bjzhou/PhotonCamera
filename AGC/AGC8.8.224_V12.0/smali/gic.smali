.class final Lgic;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Lnph;


# direct methods
.method public constructor <init>(Lkeb;Lnph;)V
    .locals 0

    iput-object p1, p0, Lgic;->a:Lkeb;

    iput-object p2, p0, Lgic;->b:Lnph;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bw(Lkou;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lgid;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xa75

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lgic;->a:Lkeb;

    const-string v1, "Failed to get metadata for frame %s"

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lgic;->b:Lnph;

    new-instance v0, Lkdf;

    invoke-direct {v0}, Lkdf;-><init>()V

    invoke-virtual {p1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lgic;->b:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
