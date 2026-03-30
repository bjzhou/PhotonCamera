.class public final Lfas;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfab;
.implements Lfat;


# instance fields
.field public final a:Z

.field public final b:Lfay;

.field public final c:Lfay;

.field public final d:Lfay;

.field public final e:I

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lfdc;Lfda;)V
    .locals 2

    goto/32 :goto_20

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p2, Lfda;->a:Lfca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lfca;->a()Lfay;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lfas;->a:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p2, Lfda;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_13

    nop

    nop

    :goto_c
    iget-object p2, p2, Lfda;->c:Lfca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lfas;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iput-object p2, p0, Lfas;->d:Lfay;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lfas;->b:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lfas;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Lfdc;->i(Lfay;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_b

    nop

    nop

    :goto_16
    iget-object v1, p2, Lfda;->b:Lfca;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Lfca;->a()Lfay;

    move-result-object p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lfas;->c:Lfay;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lfca;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p2, Lfda;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    const v0, 0x20

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Lfat;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfas;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    invoke-interface {v1}, Lfat;->d()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lfas;->f:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v1, Lfat;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lfas;->f:Ljava/util/List;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_b
    goto :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method
