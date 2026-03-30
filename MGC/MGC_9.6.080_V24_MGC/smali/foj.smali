.class final Lfoj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;
.implements Lfjx;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lduz;

.field private c:I

.field private d:Lfie;

.field private e:Lfjx;

.field private f:Ljava/util/List;

.field private g:Z


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfoj;->f:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfoj;->e:Lfjx;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v2}, Lflt;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    iget v0, p0, Lfoj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfoj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lfoj;->e:Lfjx;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lflt;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "Fetch failed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    iget-boolean v0, p0, Lfoj;->g:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lfoj;->c:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Lfoj;->c:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lfoj;->d:Lfie;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_21
    invoke-virtual {p0, v0, v1}, Lfoj;->f(Lfie;Lfjx;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;Lduz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lfsh;->p(Ljava/util/Collection;)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput p1, p0, Lfoj;->c:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfoj;->b:Lduz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfjy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lfjy;->a()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lfoj;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfoj;->e:Lfjx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lfjx;->b(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cG()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lfoj;->g:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lfjy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lfjy;->cG()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v0}, Lduz;->b(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfoj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Lfjy;->d()V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object v1, p0, Lfoj;->b:Lduz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lfjy;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lfoj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfoj;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfoj;->f:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lfoj;->b:Lduz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfoj;->cG()V

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfoj;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Lduz;->a()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Lfjy;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-object p2, p0, Lfoj;->a:Ljava/util/List;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iput-object p2, p0, Lfoj;->e:Lfjx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lfoj;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p2, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lfoj;->d:Lfie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2, p1, p0}, Lfjy;->f(Lfie;Lfjx;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-boolean p1, p0, Lfoj;->g:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop
.end method

.method public final g()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfoj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lfjy;->g()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lfjy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
