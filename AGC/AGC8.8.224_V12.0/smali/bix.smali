.class public final Lbix;
.super Lbja;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbja;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lbhs;
    .locals 1

    invoke-virtual {p0}, Lbix;->d()Lbie;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lbie;
    .locals 2

    new-instance v0, Lbie;

    iget-object v1, p0, Lbix;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lbie;-><init>(Ljava/util/List;)V

    return-object v0
.end method
