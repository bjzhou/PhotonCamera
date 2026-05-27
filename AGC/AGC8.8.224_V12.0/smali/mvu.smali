.class final Lmvu;
.super Lmvv;


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;II)V
    .locals 0

    iput-object p1, p0, Lmvu;->c:Lmvv;

    invoke-direct {p0}, Lmvv;-><init>()V

    iput p2, p0, Lmvu;->a:I

    iput p3, p0, Lmvu;->b:I

    return-void
.end method


# virtual methods
.method public final A()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmvu;->c:Lmvv;

    invoke-virtual {v0}, Lmvm;->A()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)Lmvv;
    .locals 2

    iget v0, p0, Lmvu;->b:I

    invoke-static {p1, p2, v0}, Lmoz;->o(III)V

    iget-object v0, p0, Lmvu;->c:Lmvv;

    iget v1, p0, Lmvu;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lmvv;->b(II)Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmvu;->b:I

    invoke-static {p1, v0}, Lmoz;->w(II)V

    iget-object v0, p0, Lmvu;->c:Lmvv;

    iget v1, p0, Lmvu;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lmvu;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmvv;->b(II)Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final y()I
    .locals 2

    iget-object v0, p0, Lmvu;->c:Lmvv;

    invoke-virtual {v0}, Lmvm;->z()I

    move-result v0

    iget v1, p0, Lmvu;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lmvu;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final z()I
    .locals 2

    iget-object v0, p0, Lmvu;->c:Lmvv;

    invoke-virtual {v0}, Lmvm;->z()I

    move-result v0

    iget v1, p0, Lmvu;->a:I

    add-int/2addr v0, v1

    return v0
.end method
