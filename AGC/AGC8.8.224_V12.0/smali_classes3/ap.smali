.class public final Lap;
.super Lan;


# instance fields
.field public af:F

.field public ag:I

.field public ah:I

.field public ai:I

.field private aj:Lam;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lan;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lap;->af:F

    const/4 v0, -0x1

    iput v0, p0, Lap;->ag:I

    iput v0, p0, Lap;->ah:I

    iget-object v0, p0, Lap;->j:Lam;

    iput-object v0, p0, Lap;->aj:Lam;

    const/4 v0, 0x0

    iput v0, p0, Lap;->ai:I

    iget-object v0, p0, Lap;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lap;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lap;->aj:Lam;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget v0, p0, Lap;->ai:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lap;->ai:I

    iget-object p1, p0, Lap;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lap;->ai:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lap;->i:Lam;

    iput-object p1, p0, Lap;->aj:Lam;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lap;->j:Lam;

    iput-object p1, p0, Lap;->aj:Lam;

    :goto_0
    iget-object p1, p0, Lap;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lap;->aj:Lam;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t(I)Lam;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p0, Lap;->ai:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lap;->aj:Lam;

    return-object p1

    :pswitch_1
    iget p1, p0, Lap;->ai:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lap;->aj:Lam;

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lak;)V
    .locals 7

    iget-object v0, p0, Lan;->r:Lan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lan;->t(I)Lam;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lan;->t(I)Lam;

    move-result-object v2

    iget v3, p0, Lap;->ai:I

    if-nez v3, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lan;->t(I)Lam;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lan;->t(I)Lam;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_0
    iget v0, p0, Lap;->ag:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lap;->aj:Lam;

    invoke-virtual {p1, v0}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v0

    invoke-virtual {p1, v1}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v1

    iget v2, p0, Lap;->ag:I

    invoke-static {p1, v0, v1, v2, v3}, Lak;->c(Lak;Lal;Lal;IZ)Lai;

    move-result-object v0

    invoke-virtual {p1, v0}, Lak;->g(Lai;)V

    return-void

    :cond_2
    iget v0, p0, Lap;->ah:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lap;->aj:Lam;

    invoke-virtual {p1, v0}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v0

    invoke-virtual {p1, v2}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v1

    iget v2, p0, Lap;->ah:I

    neg-int v2, v2

    invoke-static {p1, v0, v1, v2, v3}, Lak;->c(Lak;Lal;Lal;IZ)Lai;

    move-result-object v0

    invoke-virtual {p1, v0}, Lak;->g(Lai;)V

    return-void

    :cond_3
    iget v0, p0, Lap;->af:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lap;->aj:Lam;

    invoke-virtual {p1, v0}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v0

    invoke-virtual {p1, v1}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v1

    invoke-virtual {p1, v2}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v2

    iget v4, p0, Lap;->af:F

    invoke-virtual {p1}, Lak;->a()Lai;

    move-result-object v5

    iget-object v6, v5, Lai;->d:Lah;

    invoke-virtual {v6, v0, v3}, Lah;->f(Lal;F)V

    iget-object v0, v5, Lai;->d:Lah;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lah;->f(Lal;F)V

    iget-object v0, v5, Lai;->d:Lah;

    invoke-virtual {v0, v2, v4}, Lah;->f(Lal;F)V

    invoke-virtual {p1, v5}, Lak;->g(Lai;)V

    :cond_4
    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lan;->r:Lan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lap;->aj:Lam;

    invoke-static {v0}, Lak;->p(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lap;->ai:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iput v0, p0, Lan;->w:I

    iput v3, p0, Lan;->x:I

    iget-object v0, p0, Lan;->r:Lan;

    invoke-virtual {v0}, Lan;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lan;->j(I)V

    invoke-virtual {p0, v3}, Lan;->p(I)V

    return-void

    :cond_1
    iput v3, p0, Lan;->w:I

    iput v0, p0, Lan;->x:I

    iget-object v0, p0, Lan;->r:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lan;->p(I)V

    invoke-virtual {p0, v3}, Lan;->j(I)V

    return-void
.end method
