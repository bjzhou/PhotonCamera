.class public Lokp;
.super Ljava/lang/Object;

# interfaces
.implements Lokx;


# instance fields
.field private final key:Loky;


# direct methods
.method public constructor <init>(Loky;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokp;->key:Loky;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lljr;->G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Loky;)Lokx;
    .locals 0

    invoke-static {p0, p1}, Lljr;->H(Lokx;Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Loky;
    .locals 1

    iget-object v0, p0, Lokp;->key:Loky;

    return-object v0
.end method

.method public minusKey(Loky;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->I(Lokx;Loky;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lola;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->J(Lokx;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method
