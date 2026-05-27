.class public final Lyq;
.super Lyn;


# instance fields
.field public a:F

.field public as:I

.field private at:Z

.field public b:I

.field public c:I

.field public d:Lym;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lyn;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lyq;->a:F

    const/4 v0, -0x1

    iput v0, p0, Lyq;->b:I

    iput v0, p0, Lyq;->c:I

    iget-object v0, p0, Lyq;->L:Lym;

    iput-object v0, p0, Lyq;->d:Lym;

    const/4 v0, 0x0

    iput v0, p0, Lyq;->as:I

    iget-object v1, p0, Lyq;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lyq;->T:Ljava/util/ArrayList;

    iget-object v2, p0, Lyq;->d:Lym;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lyq;->S:[Lym;

    array-length v1, v1

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyq;->S:[Lym;

    iget-object v2, p0, Lyq;->d:Lym;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final S(Z)V
    .locals 3

    iget-object p1, p0, Lyn;->V:Lyn;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lyq;->d:Lym;

    invoke-static {p1}, Lyc;->o(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lyq;->as:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput p1, p0, Lyn;->aa:I

    iput v2, p0, Lyn;->ab:I

    iget-object p1, p0, Lyn;->V:Lyn;

    invoke-virtual {p1}, Lyn;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lyn;->A(I)V

    invoke-virtual {p0, v2}, Lyn;->F(I)V

    return-void

    :cond_1
    iput v2, p0, Lyn;->aa:I

    iput p1, p0, Lyn;->ab:I

    iget-object p1, p0, Lyn;->V:Lyn;

    invoke-virtual {p1}, Lyn;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lyn;->F(I)V

    invoke-virtual {p0, v2}, Lyn;->A(I)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lyq;->d:Lym;

    invoke-virtual {v0, p1}, Lym;->e(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyq;->at:Z

    return-void
.end method

.method public final b(Lyc;Z)V
    .locals 7

    iget-object p2, p0, Lyn;->V:Lyn;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lyl;->b:Lyl;

    invoke-virtual {p2, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    sget-object v1, Lyl;->d:Lyl;

    invoke-virtual {p2, v1}, Lyn;->m(Lyl;)Lym;

    move-result-object v1

    iget-object v2, p0, Lyq;->V:Lyn;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lyn;->ar:[I

    aget v2, v2, v5

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v6, p0, Lyq;->as:I

    if-nez v6, :cond_3

    sget-object v0, Lyl;->c:Lyl;

    invoke-virtual {p2, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    sget-object v1, Lyl;->e:Lyl;

    invoke-virtual {p2, v1}, Lyn;->m(Lyl;)Lym;

    move-result-object v1

    iget-object p2, p0, Lyq;->V:Lyn;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lyn;->ar:[I

    aget p2, p2, v4

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_3
    :goto_2
    iget-boolean p2, p0, Lyq;->at:Z

    const/4 v3, -0x1

    const/4 v4, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lyq;->d:Lym;

    iget-boolean v6, p2, Lym;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object p2

    iget-object v6, p0, Lyq;->d:Lym;

    invoke-virtual {v6}, Lym;->a()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lyc;->f(Lyh;I)V

    iget v6, p0, Lyq;->b:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_3

    :cond_4
    iget v6, p0, Lyq;->c:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v1

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    invoke-virtual {p1, v1, p2, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    :cond_5
    :goto_3
    iput-boolean v5, p0, Lyq;->at:Z

    return-void

    :cond_6
    iget p2, p0, Lyq;->b:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lyq;->d:Lym;

    invoke-virtual {p1, p2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object p2

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    iget v3, p0, Lyq;->b:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lyc;->m(Lyh;Lyh;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    return-void

    :cond_7
    iget p2, p0, Lyq;->c:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lyq;->d:Lym;

    invoke-virtual {p1, p2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object p2

    invoke-virtual {p1, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v1

    iget v3, p0, Lyq;->c:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lyc;->m(Lyh;Lyh;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    invoke-virtual {p1, v1, p2, v5, v4}, Lyc;->g(Lyh;Lyh;II)V

    return-void

    :cond_8
    iget p2, p0, Lyq;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lyq;->d:Lym;

    invoke-virtual {p1, p2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object p2

    invoke-virtual {p1, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v1

    iget v2, p0, Lyq;->a:F

    invoke-virtual {p1}, Lyc;->a()Lyb;

    move-result-object v3

    iget-object v4, v3, Lyb;->e:Lya;

    invoke-virtual {v4, p2, v0}, Lya;->g(Lyh;F)V

    iget-object p2, v3, Lyb;->e:Lya;

    invoke-virtual {p2, v1, v2}, Lya;->g(Lyh;F)V

    invoke-virtual {p1, v3}, Lyc;->e(Lyb;)V

    return-void

    :cond_9
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lyq;->as:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyq;->as:I

    iget-object p1, p0, Lyq;->T:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lyq;->as:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lyq;->K:Lym;

    iput-object p1, p0, Lyq;->d:Lym;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lyq;->L:Lym;

    iput-object p1, p0, Lyq;->d:Lym;

    :goto_0
    iget-object p1, p0, Lyq;->T:Ljava/util/ArrayList;

    iget-object v0, p0, Lyq;->d:Lym;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lyq;->S:[Lym;

    array-length p1, p1

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lyq;->S:[Lym;

    iget-object v1, p0, Lyq;->d:Lym;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lyq;->at:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lyq;->at:Z

    return v0
.end method

.method public final m(Lyl;)Lym;
    .locals 2

    sget-object v0, Lyl;->a:Lyl;

    invoke-virtual {p1}, Lyl;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    iget p1, p0, Lyq;->as:I

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lyq;->d:Lym;

    return-object p1

    :pswitch_1
    iget p1, p0, Lyq;->as:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :goto_1
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
