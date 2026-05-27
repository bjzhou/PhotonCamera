.class public final Lehp;
.super Ljava/lang/Object;

# interfaces
.implements Lekd;


# instance fields
.field private final a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehp;->a:Lmvv;

    return-void
.end method


# virtual methods
.method public final a([FJ)V
    .locals 4

    iget-object v0, p0, Lehp;->a:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekd;

    invoke-interface {v3, p1, p2, p3}, Lekd;->a([FJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 4

    iget-object v0, p0, Lehp;->a:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekd;

    invoke-interface {v3, p1, p2}, Lekd;->b(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V
    .locals 4

    iget-object v0, p0, Lehp;->a:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekd;

    invoke-interface {v3, p1, p2}, Lekd;->c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lehp;->a:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekd;

    invoke-interface {v3}, Lekd;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lehu;)V
    .locals 4

    iget-object v0, p0, Lehp;->a:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekd;

    invoke-interface {v3, p1}, Lekd;->e(Lehu;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
