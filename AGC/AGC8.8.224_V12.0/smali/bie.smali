.class public final Lbie;
.super Lbhx;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbhx;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p1, Lblt;->c:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lbii;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lblt;->b:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lbii;

    :goto_1
    return-object p2
.end method
