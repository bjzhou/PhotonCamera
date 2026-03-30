.class final Lbcu;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Luaz;

.field final synthetic b:Lbzz;

.field final synthetic c:Lcfs;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lbck;

.field final synthetic g:Lubo;

.field final synthetic h:I


# direct methods
.method public constructor <init>(Luaz;Lbzz;Lcfs;JJLbck;Lubo;I)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p6, p0, Lbcu;->e:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Lbcu;->g:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p2, p0, Lbcu;->b:Lbzz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput p10, p0, Lbcu;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p4, p0, Lbcu;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lbcu;->a:Luaz;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-object p3, p0, Lbcu;->c:Lcfs;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-object p8, p0, Lbcu;->f:Lbck;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v7, p0, Lbcu;->f:Lbck;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v0 .. v10}, Lbcv;->b(Luaz;Lbzz;Lcfs;JJLbck;Lubo;Lblm;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v9, Lblm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v3, p0, Lbcu;->d:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v10

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v5, p0, Lbcu;->e:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    iget-object v2, p0, Lbcu;->c:Lcfs;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    move-object v9, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-object v1, p0, Lbcu;->b:Lbzz;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    iget p1, p0, Lbcu;->h:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v8, p0, Lbcu;->g:Lubo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    iget-object v0, p0, Lbcu;->a:Luaz;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method
