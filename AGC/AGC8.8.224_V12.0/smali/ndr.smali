.class public final Lndr;
.super Lndo;


# direct methods
.method public constructor <init>(Lnbm;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lndo;-><init>(Lnbm;I)V

    return-void
.end method


# virtual methods
.method public final a(Lndp;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lnbl;->f:Lnbl;

    iget-object v1, p0, Lndo;->b:Lnbm;

    invoke-interface {p1, p2, v0, v1}, Lndp;->a(Ljava/lang/Object;Lnbl;Lnbm;)V

    return-void
.end method
