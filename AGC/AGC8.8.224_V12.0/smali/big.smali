.class public final Lbig;
.super Lbhs;


# direct methods
.method public constructor <init>(Lbkc;[B)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lbig;-><init>(Lbkc;[B[B)V

    return-void
.end method

.method public constructor <init>(Lbkc;[B[B)V
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lbhs;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lbhs;->d:Lbkc;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbig;->d:Lbkc;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lblt;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lbig;->d:Lbkc;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lbhs;->h()V

    :cond_0
    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lbig;->c:F

    return-void
.end method
