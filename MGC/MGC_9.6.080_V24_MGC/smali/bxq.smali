.class public final Lbxq;
.super Lbxt;
.source "PG"


# instance fields
.field private final a:Lubk;

.field private b:I


# direct methods
.method public constructor <init>(ILbxz;Lubk;)V
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

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lbxq;->a:Lubk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 p1, 0x1

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

    :goto_3
    iput p1, p0, Lbxq;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Lbxt;-><init>(ILbxz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lubk;)Lbxt;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget v2, p0, Lbxt;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lbxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbxq;->a:Lubk;

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

    nop

    :goto_4
    const v0, 0x9

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lbyg;->w(Lbxt;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    invoke-static {p1, v0}, Lbyg;->y(Lubk;Lubk;)Lubk;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

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

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lbxt;->g:Lbxz;

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

    nop

    :goto_10
    invoke-direct {v1, v2, v3, p1, p0}, Lbxo;-><init>(ILbxz;Lubk;Lbxt;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-super {p0}, Lbxt;->d()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lbxt;->i:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lbxq;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput v0, p0, Lbxq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lbxq;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lbxt;->y()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lbxq;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lbxq;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i()Lubk;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbxq;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k()Lubk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final n(Lbyw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ltxr;

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

    :goto_1
    invoke-direct {p0}, Ltxr;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lbyg;->A()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final r()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method
