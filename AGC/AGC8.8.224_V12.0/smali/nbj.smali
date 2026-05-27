.class public final Lnbj;
.super Lnbh;


# direct methods
.method public constructor <init>(Lnbq;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbh;-><init>(Lnbq;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)Lnbj;
    .locals 1

    new-instance v0, Lnbj;

    invoke-static {p0}, Lncn;->d(Ljava/lang/String;)Lnbq;

    move-result-object p0

    invoke-direct {v0, p0}, Lnbj;-><init>(Lnbq;)V

    return-object v0
.end method

.method public static i()Lnbj;
    .locals 2

    invoke-static {}, Lncn;->g()Lncm;

    move-result-object v0

    const-class v1, Lnbj;

    invoke-virtual {v0, v1}, Lncm;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnbj;

    invoke-static {v0}, Lncn;->d(Ljava/lang/String;)Lnbq;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbj;-><init>(Lnbq;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/logging/Level;)Lnaz;
    .locals 0

    invoke-virtual {p0, p1}, Lnbj;->g(Ljava/util/logging/Level;)Lnbf;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/logging/Level;)Lnbf;
    .locals 2

    invoke-virtual {p0, p1}, Lnaf;->f(Ljava/util/logging/Level;)Z

    move-result v0

    invoke-virtual {p0}, Lnaf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lncn;->n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_0

    sget-object p1, Lnbj;->b:Lnbg;

    return-object p1

    :cond_0
    new-instance v0, Lnbi;

    invoke-direct {v0, p0, p1}, Lnbi;-><init>(Lnbj;Ljava/util/logging/Level;)V

    return-object v0
.end method
