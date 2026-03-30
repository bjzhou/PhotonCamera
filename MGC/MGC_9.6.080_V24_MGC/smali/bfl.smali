.class final Lbfl;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbzz;

.field final synthetic b:Lcfs;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:F

.field final synthetic f:Lubo;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method public constructor <init>(Lbzz;Lcfs;JJFLubo;II)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iput p7, p0, Lbfl;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p9, p0, Lbfl;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput p10, p0, Lbfl;->h:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p3, p0, Lbfl;->c:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lbfl;->b:Lcfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object p8, p0, Lbfl;->f:Lubo;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iput-object p1, p0, Lbfl;->a:Lbzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput-wide p5, p0, Lbfl;->d:J

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_12

    nop

    nop

    :goto_0
    iget p1, p0, Lbfl;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    iget-object v0, p0, Lbfl;->a:Lbzz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lbfl;->c:J

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v10, p0, Lbfl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v7, p0, Lbfl;->f:Lubo;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v8, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lbfl;->b:Lcfs;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v8, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

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

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    iget v6, p0, Lbfl;->e:F

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

    :goto_17
    invoke-static/range {v0 .. v10}, Lbfo;->a(Lbzz;Lcfs;JJFLubo;Lblm;II)V

    goto/32 :goto_15

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-wide v4, p0, Lbfl;->d:J

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
.end method
