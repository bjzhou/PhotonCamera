.class final Lauu;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Luaz;

.field final synthetic b:Lbzz;

.field final synthetic c:Lavn;

.field final synthetic d:Lubo;

.field final synthetic e:I


# direct methods
.method public constructor <init>(Luaz;Lbzz;Lavn;Lubo;I)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lauu;->c:Lavn;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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
    iput-object p4, p0, Lauu;->d:Lubo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lauu;->b:Lbzz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p5, p0, Lauu;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p1, p0, Lauu;->a:Luaz;

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

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object v1, p0, Lauu;->b:Lbzz;

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

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

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

    :goto_7
    iget-object v2, p0, Lauu;->c:Lavn;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    check-cast v4, Lblm;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_10
    check-cast p2, Ljava/lang/Number;

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

    :goto_11
    iget-object v0, p0, Lauu;->a:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-static/range {v0 .. v5}, Lauv;->a(Luaz;Lbzz;Lavn;Lubo;Lblm;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    :goto_15
    iget-object v3, p0, Lauu;->d:Lubo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lauu;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
