.class final Lbfa;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbed;

.field final synthetic b:Lbzz;

.field final synthetic c:Lcfs;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:F

.field final synthetic h:I


# direct methods
.method public constructor <init>(Lbed;Lbzz;Lcfs;JJJFI)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-wide p8, p0, Lbfa;->f:J

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

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iput-object p2, p0, Lbfa;->b:Lbzz;

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

    :goto_3
    iput-wide p6, p0, Lbfa;->e:J

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p10, p0, Lbfa;->g:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-object p3, p0, Lbfa;->c:Lcfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput p11, p0, Lbfa;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lbfa;->a:Lbed;

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

    :goto_9
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput-wide p4, p0, Lbfa;->d:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    :goto_6
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    iget-wide v5, p0, Lbfa;->e:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_9
    iget-object v1, p0, Lbfa;->b:Lbzz;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    move-object v10, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Lbfa;->h:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lbfa;->c:Lcfs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget v9, p0, Lbfa;->g:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    iget-object v0, p0, Lbfa;->a:Lbed;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    check-cast v10, Lblm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v0 .. v11}, Lbfh;->d(Lbed;Lbzz;Lcfs;JJJFLblm;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v7, p0, Lbfa;->f:J

    nop

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

    :goto_13
    iget-wide v3, p0, Lbfa;->d:J

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

    nop

    :goto_14
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method
