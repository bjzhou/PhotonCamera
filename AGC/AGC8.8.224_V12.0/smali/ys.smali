.class public final Lys;
.super Ljava/lang/Object;


# static fields
.field static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lys;->a:[Z

    return-void
.end method

.method static a(Lyo;Lyc;Lyn;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p2, Lyn;->q:I

    iput v0, p2, Lyn;->r:I

    iget-object v0, p0, Lyo;->ar:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p2, Lyn;->ar:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    iget-object v0, p2, Lyn;->K:Lym;

    iget v1, v0, Lym;->g:I

    invoke-virtual {p0}, Lyn;->j()I

    move-result v4

    iget-object v5, p2, Lyn;->M:Lym;

    iget v5, v5, Lym;->g:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v5

    iput-object v5, v0, Lym;->i:Lyh;

    iget-object v0, p2, Lyn;->M:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v5

    iput-object v5, v0, Lym;->i:Lyh;

    iget-object v0, p2, Lyn;->K:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, v0, v1}, Lyc;->f(Lyh;I)V

    iget-object v0, p2, Lyn;->M:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, v0, v4}, Lyc;->f(Lyh;I)V

    iput v3, p2, Lyn;->q:I

    iput v1, p2, Lyn;->aa:I

    sub-int/2addr v4, v1

    iput v4, p2, Lyn;->W:I

    iget v0, p2, Lyn;->ad:I

    if-ge v4, v0, :cond_0

    iput v0, p2, Lyn;->W:I

    :cond_0
    iget-object v0, p0, Lyo;->ar:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    iget-object v0, p2, Lyn;->ar:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_3

    iget-object v0, p2, Lyn;->L:Lym;

    iget v1, v0, Lym;->g:I

    invoke-virtual {p0}, Lyn;->h()I

    move-result p0

    iget-object v2, p2, Lyn;->N:Lym;

    iget v2, v2, Lym;->g:I

    sub-int/2addr p0, v2

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v2

    iput-object v2, v0, Lym;->i:Lyh;

    iget-object v0, p2, Lyn;->N:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v2

    iput-object v2, v0, Lym;->i:Lyh;

    iget-object v0, p2, Lyn;->L:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, v0, v1}, Lyc;->f(Lyh;I)V

    iget-object v0, p2, Lyn;->N:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, v0, p0}, Lyc;->f(Lyh;I)V

    iget v0, p2, Lyn;->ac:I

    if-gtz v0, :cond_1

    iget v0, p2, Lyn;->ai:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p2, Lyn;->O:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v2

    iput-object v2, v0, Lym;->i:Lyh;

    iget-object v0, p2, Lyn;->O:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    iget v2, p2, Lyn;->ac:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lyc;->f(Lyh;I)V

    :cond_2
    iput v3, p2, Lyn;->r:I

    iput v1, p2, Lyn;->ab:I

    sub-int/2addr p0, v1

    iput p0, p2, Lyn;->X:I

    iget p1, p2, Lyn;->ae:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lyn;->X:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
