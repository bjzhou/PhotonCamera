.class public final Lnak;
.super Lnaf;


# static fields
.field public static final b:Lnaj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnaj;

    invoke-direct {v0}, Lnaj;-><init>()V

    sput-object v0, Lnak;->b:Lnaj;

    return-void
.end method

.method public constructor <init>(Lnbq;)V
    .locals 0

    invoke-direct {p0, p1}, Lnaf;-><init>(Lnbq;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)Lnak;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "injected class name is empty"

    invoke-static {v0, v1}, Lndd;->f(ZLjava/lang/String;)V

    new-instance v0, Lnak;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lncn;->d(Ljava/lang/String;)Lnbq;

    move-result-object p0

    invoke-direct {v0, p0}, Lnak;-><init>(Lnbq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/logging/Level;)Lnaz;
    .locals 0

    invoke-virtual {p0, p1}, Lnak;->g(Ljava/util/logging/Level;)Lnah;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/logging/Level;)Lnah;
    .locals 2

    invoke-virtual {p0, p1}, Lnaf;->f(Ljava/util/logging/Level;)Z

    move-result v0

    invoke-virtual {p0}, Lnaf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lncn;->n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_0

    sget-object p1, Lnak;->b:Lnaj;

    return-object p1

    :cond_0
    new-instance v0, Lnai;

    invoke-direct {v0, p0, p1}, Lnai;-><init>(Lnak;Ljava/util/logging/Level;)V

    return-object v0
.end method
