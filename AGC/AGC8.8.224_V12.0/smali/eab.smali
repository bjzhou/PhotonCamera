.class public final Leab;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lduq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lduq;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lduq;-><init>(I)V

    sput-object v0, Leab;->a:Lduq;

    return-void
.end method

.method static synthetic a(Lnaz;Ljava/lang/String;C)V
    .locals 1

    check-cast p0, Lnah;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lnah;->H(Ljava/util/concurrent/TimeUnit;)Lnaz;

    move-result-object p0

    check-cast p0, Lnah;

    invoke-interface {p0, p2}, Lnah;->G(I)Lnaz;

    move-result-object p0

    check-cast p0, Lnah;

    invoke-interface {p0, p1}, Lnah;->o(Ljava/lang/String;)V

    return-void
.end method
