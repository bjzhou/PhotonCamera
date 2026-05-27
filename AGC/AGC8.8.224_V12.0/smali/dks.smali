.class public final Ldks;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lika;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lika;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldks;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldks;->c:Ljava/util/Map;

    iput-object p1, p0, Ldks;->a:Lika;

    iput p2, p0, Ldks;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lniv;
    .locals 10

    iget v0, p0, Ldks;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcei;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lcei;-><init>(Ldks;I)V

    invoke-static {v0}, Lmjy;->m(Lnal;)V

    :cond_0
    sget-object v0, Lniv;->i:Lniv;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v2, p0, Ldks;->a:Lika;

    iget v2, v2, Lika;->u:I

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lniv;

    iget v5, v4, Lniv;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lniv;->a:I

    iput v2, v4, Lniv;->b:I

    iget v2, p0, Ldks;->e:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lniv;

    add-int/lit8 v2, v2, -0x1

    iput v2, v4, Lniv;->c:I

    iget v2, v4, Lniv;->a:I

    or-int/2addr v2, v1

    iput v2, v4, Lniv;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lniv;

    iput v6, v3, Lniv;->d:I

    iget v4, v3, Lniv;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lniv;->a:I

    iget v3, p0, Ldks;->d:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v4, v2

    check-cast v4, Lniv;

    iget v5, v4, Lniv;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lniv;->a:I

    iput v3, v4, Lniv;->e:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lniv;

    iget v3, v2, Lniv;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lniv;->a:I

    iput v1, v2, Lniv;->h:I

    iget-object v2, p0, Ldks;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Ldks;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldkr;

    sget-object v5, Lnit;->g:Lnit;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_6
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnit;

    iget v9, v8, Lnit;->a:I

    or-int/2addr v9, v6

    iput v9, v8, Lnit;->a:I

    iput v3, v8, Lnit;->b:I

    iget v3, v4, Ldkr;->a:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_7
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnit;

    iget v9, v8, Lnit;->a:I

    or-int/2addr v9, v1

    iput v9, v8, Lnit;->a:I

    iput v3, v8, Lnit;->c:I

    iget v3, v4, Ldkr;->b:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_8
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnit;

    iget v9, v8, Lnit;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Lnit;->a:I

    iput v3, v8, Lnit;->d:I

    iget v3, v4, Ldkr;->c:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_9
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnit;

    iget v9, v8, Lnit;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Lnit;->a:I

    iput v3, v8, Lnit;->e:I

    iget v3, v4, Ldkr;->d:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_a
    iget-object v4, v5, Lnwn;->b:Lnws;

    check-cast v4, Lnit;

    iget v7, v4, Lnit;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Lnit;->a:I

    iput v3, v4, Lnit;->f:I

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnit;

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lniv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lniv;->f:Lnxa;

    invoke-interface {v5}, Lnxa;->c()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v5}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v5

    iput-object v5, v4, Lniv;->f:Lnxa;

    :cond_c
    iget-object v4, v4, Lniv;->f:Lnxa;

    invoke-interface {v4, v3}, Lnxa;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Ldks;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lniu;->d:Lniu;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_e
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lniu;

    iget v7, v5, Lniu;->a:I

    or-int/2addr v7, v6

    iput v7, v5, Lniu;->a:I

    iput v3, v5, Lniu;->b:I

    iget-object v5, p0, Ldks;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_f
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lniu;

    iget v7, v5, Lniu;->a:I

    or-int/2addr v7, v1

    iput v7, v5, Lniu;->a:I

    iput v3, v5, Lniu;->c:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lniu;

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_10
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lniv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lniv;->g:Lnxa;

    invoke-interface {v5}, Lnxa;->c()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v5}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v5

    iput-object v5, v4, Lniv;->g:Lnxa;

    :cond_11
    iget-object v4, v4, Lniv;->g:Lnxa;

    invoke-interface {v4, v3}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lniv;

    return-object v0
.end method
