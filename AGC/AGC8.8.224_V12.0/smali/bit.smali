.class public final Lbit;
.super Lbja;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbja;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lbhs;
    .locals 2

    new-instance v0, Lbia;

    iget-object v1, p0, Lbit;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lbia;-><init>(Ljava/util/List;)V

    return-object v0
.end method
