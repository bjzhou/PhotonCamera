.class public abstract Lzi;
.super Ljava/lang/Object;

# interfaces
.implements Lyx;


# instance fields
.field public c:I

.field public d:Lyn;

.field e:Lzf;

.field public final f:Lza;

.field public g:I

.field public h:Z

.field public final i:Lyz;

.field public final j:Lyz;

.field protected k:I

.field protected l:I


# direct methods
.method public constructor <init>(Lyn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lza;

    invoke-direct {v0, p0}, Lza;-><init>(Lzi;)V

    iput-object v0, p0, Lzi;->f:Lza;

    const/4 v0, 0x0

    iput v0, p0, Lzi;->g:I

    iput-boolean v0, p0, Lzi;->h:Z

    new-instance v0, Lyz;

    invoke-direct {v0, p0}, Lyz;-><init>(Lzi;)V

    iput-object v0, p0, Lzi;->i:Lyz;

    new-instance v0, Lyz;

    invoke-direct {v0, p0}, Lyz;-><init>(Lzi;)V

    iput-object v0, p0, Lzi;->j:Lyz;

    const/4 v0, 0x1

    iput v0, p0, Lzi;->l:I

    iput-object p1, p0, Lzi;->d:Lyn;

    return-void
.end method

.method protected static final j(Lyz;Lyz;I)V
    .locals 1

    iget-object v0, p0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lyz;->e:I

    iget-object p1, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static final k(Lym;)Lyz;
    .locals 3

    iget-object p0, p0, Lym;->f:Lym;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lym;->d:Lyn;

    iget-object p0, p0, Lym;->e:Lyl;

    sget-object v2, Lyl;->a:Lyl;

    invoke-virtual {p0}, Lyl;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget-object p0, v1, Lyn;->i:Lzg;

    iget-object p0, p0, Lzg;->a:Lyz;

    return-object p0

    :pswitch_1
    iget-object p0, v1, Lyn;->i:Lzg;

    iget-object p0, p0, Lzg;->j:Lyz;

    return-object p0

    :pswitch_2
    iget-object p0, v1, Lyn;->h:Lze;

    iget-object p0, p0, Lze;->j:Lyz;

    return-object p0

    :pswitch_3
    iget-object p0, v1, Lyn;->i:Lzg;

    iget-object p0, p0, Lzg;->i:Lyz;

    return-object p0

    :pswitch_4
    iget-object p0, v1, Lyn;->h:Lze;

    iget-object p0, p0, Lze;->i:Lyz;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static final l(Lym;I)Lyz;
    .locals 2

    iget-object p0, p0, Lym;->f:Lym;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lym;->d:Lyn;

    if-nez p1, :cond_1

    iget-object p1, v1, Lyn;->h:Lze;

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lyn;->i:Lzg;

    :goto_0
    iget-object p0, p0, Lym;->e:Lyl;

    sget-object v1, Lyl;->a:Lyl;

    invoke-virtual {p0}, Lyl;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget-object p0, p1, Lzi;->j:Lyz;

    return-object p0

    :pswitch_1
    iget-object p0, p1, Lzi;->i:Lyz;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lzi;->f:Lza;

    iget-boolean v1, v0, Lza;->i:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lza;->f:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final h(II)I
    .locals 1

    if-nez p2, :cond_2

    iget-object p2, p0, Lzi;->d:Lyn;

    iget v0, p2, Lyn;->x:I

    iget p2, p2, Lyn;->w:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_0
    :goto_0
    if-ne p2, p1, :cond_1

    goto :goto_2

    :cond_1
    move p1, p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lzi;->d:Lyn;

    iget v0, p2, Lyn;->A:I

    iget p2, p2, Lyn;->z:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    :goto_2
    return p1

    :cond_4
    return p2
.end method

.method protected final i(Lyz;Lyz;ILza;)V
    .locals 2

    iget-object v0, p1, Lyz;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lyz;->k:Ljava/util/List;

    iget-object v1, p0, Lzi;->f:Lza;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lyz;->g:I

    iput-object p4, p1, Lyz;->h:Lza;

    iget-object p2, p2, Lyz;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lza;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final m(Lym;Lym;I)V
    .locals 10

    invoke-static {p1}, Lzi;->k(Lym;)Lyz;

    move-result-object v0

    invoke-static {p2}, Lzi;->k(Lym;)Lyz;

    move-result-object v1

    iget-boolean v2, v0, Lyz;->i:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lyz;->i:Z

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v2, v0, Lyz;->f:I

    invoke-virtual {p1}, Lym;->b()I

    move-result p1

    add-int/2addr v2, p1

    iget p1, v1, Lyz;->f:I

    invoke-virtual {p2}, Lym;->b()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lzi;->f:Lza;

    iget-boolean v3, p2, Lza;->i:Z

    sub-int v4, p1, v2

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v3, :cond_6

    iget v3, p0, Lzi;->k:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    iget v3, p0, Lzi;->c:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v3, p0, Lzi;->d:Lyn;

    iget-object v7, v3, Lyn;->h:Lze;

    iget v8, v7, Lze;->k:I

    if-ne v8, v6, :cond_1

    iget v8, v7, Lze;->c:I

    if-ne v8, v6, :cond_1

    iget-object v8, v3, Lyn;->i:Lzg;

    iget v9, v8, Lzg;->k:I

    if-ne v9, v6, :cond_1

    iget v8, v8, Lzg;->c:I

    if-eq v8, v6, :cond_6

    :cond_1
    if-nez p3, :cond_2

    iget-object v7, v3, Lyn;->i:Lzg;

    :cond_2
    iget-object v6, v7, Lzi;->f:Lza;

    iget-boolean v7, v6, Lza;->i:Z

    if-eqz v7, :cond_6

    iget v3, v3, Lyn;->Y:F

    const/4 v7, 0x1

    if-ne p3, v7, :cond_3

    iget v6, v6, Lza;->f:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    goto :goto_0

    :cond_3
    iget v6, v6, Lza;->f:I

    int-to-float v6, v6

    mul-float v3, v3, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    :goto_0
    invoke-virtual {p2, v3}, Lyz;->c(I)V

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Lzi;->d:Lyn;

    iget-object v6, v3, Lyn;->V:Lyn;

    if-eqz v6, :cond_6

    if-nez p3, :cond_4

    iget-object v6, v6, Lyn;->h:Lze;

    goto :goto_1

    :cond_4
    iget-object v6, v6, Lyn;->i:Lzg;

    :goto_1
    iget-object v6, v6, Lzi;->f:Lza;

    iget-boolean v7, v6, Lza;->i:Z

    if-eqz v7, :cond_6

    if-nez p3, :cond_5

    iget v3, v3, Lyn;->y:F

    goto :goto_2

    :cond_5
    iget v3, v3, Lyn;->B:F

    :goto_2
    iget v6, v6, Lza;->f:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    invoke-virtual {p0, v3, p3}, Lzi;->h(II)I

    move-result v3

    invoke-virtual {p2, v3}, Lyz;->c(I)V

    goto :goto_3

    :pswitch_2
    iget p2, p2, Lza;->m:I

    invoke-virtual {p0, p2, p3}, Lzi;->h(II)I

    move-result p2

    iget-object v3, p0, Lzi;->f:Lza;

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v3, p2}, Lyz;->c(I)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v4, p3}, Lzi;->h(II)I

    move-result v3

    invoke-virtual {p2, v3}, Lyz;->c(I)V

    :cond_6
    :goto_3
    iget-object p2, p0, Lzi;->f:Lza;

    iget-boolean v3, p2, Lza;->i:Z

    if-nez v3, :cond_7

    return-void

    :cond_7
    iget p2, p2, Lza;->f:I

    if-ne p2, v4, :cond_8

    iget-object p2, p0, Lzi;->i:Lyz;

    invoke-virtual {p2, v2}, Lyz;->c(I)V

    iget-object p2, p0, Lzi;->j:Lyz;

    invoke-virtual {p2, p1}, Lyz;->c(I)V

    return-void

    :cond_8
    if-nez p3, :cond_9

    iget-object p3, p0, Lzi;->d:Lyn;

    iget p3, p3, Lyn;->af:F

    goto :goto_4

    :cond_9
    iget-object p3, p0, Lzi;->d:Lyn;

    iget p3, p3, Lyn;->ag:F

    :goto_4
    if-ne v0, v1, :cond_a

    iget v2, v0, Lyz;->f:I

    iget p1, v1, Lyz;->f:I

    const/high16 p3, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_a
    :goto_5
    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lzi;->i:Lyz;

    int-to-float v0, v2

    add-float/2addr v0, v5

    int-to-float p1, p1

    mul-float p1, p1, p3

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Lyz;->c(I)V

    iget-object p1, p0, Lzi;->j:Lyz;

    iget-object p2, p0, Lzi;->i:Lyz;

    iget p2, p2, Lyz;->f:I

    iget-object p3, p0, Lzi;->f:Lza;

    iget p3, p3, Lza;->f:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lyz;->c(I)V

    return-void

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
