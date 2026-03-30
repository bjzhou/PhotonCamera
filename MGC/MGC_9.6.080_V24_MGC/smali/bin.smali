.class final Lbin;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Luaz;

.field final synthetic b:Lbzz;

.field final synthetic c:Z

.field final synthetic d:Lbil;

.field final synthetic e:Lcfs;

.field final synthetic f:Lubo;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method public constructor <init>(Luaz;Lbzz;ZLbil;Lcfs;Lubo;II)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lbin;->e:Lcfs;

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

    :goto_1
    iput-object p6, p0, Lbin;->f:Lubo;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lbin;->d:Lbil;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p3, p0, Lbin;->c:Z

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

    nop

    :goto_5
    iput p7, p0, Lbin;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x2

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

    :goto_7
    iput-object p1, p0, Lbin;->a:Luaz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lbin;->b:Lbzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    iput p8, p0, Lbin;->h:I

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Lbin;->d:Lbil;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    move-object v6, p1

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

    :goto_4
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lbin;->a:Luaz;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-static/range {v0 .. v8}, Lbio;->a(Luaz;Lbzz;ZLbil;Lcfs;Lubo;Lblm;II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v6, Lblm;

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

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    iget p1, p0, Lbin;->g:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v7

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

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v5, p0, Lbin;->f:Lubo;

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

    :goto_14
    iget-object v1, p0, Lbin;->b:Lbzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_16
    iget v8, p0, Lbin;->h:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v2, p0, Lbin;->c:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Lbin;->e:Lcfs;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
