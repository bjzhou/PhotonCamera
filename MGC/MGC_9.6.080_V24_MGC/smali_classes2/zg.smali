.class final Lzg;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lads;

.field final synthetic b:Lubk;

.field final synthetic c:Lbzz;

.field final synthetic d:Laab;

.field final synthetic e:Laad;

.field final synthetic f:Lubp;

.field final synthetic g:I


# direct methods
.method public constructor <init>(Lads;Lubk;Lbzz;Laab;Laad;Lubp;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lzg;->a:Lads;

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lzg;->b:Lubk;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput p7, p0, Lzg;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lzg;->e:Laad;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lzg;->f:Lubp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lzg;->c:Lbzz;

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

    :goto_9
    iput-object p4, p0, Lzg;->d:Laab;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static/range {v0 .. v7}, Lzh;->b(Lads;Lubk;Lbzz;Laab;Laad;Lubp;Lblm;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    iget-object v1, p0, Lzg;->b:Lubk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lzg;->c:Lbzz;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lzg;->d:Laab;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    check-cast v6, Lblm;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_15

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    iget-object v0, p0, Lzg;->a:Lads;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v5, p0, Lzg;->f:Lubp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Lzg;->e:Laad;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iget p1, p0, Lzg;->g:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    move-object v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
