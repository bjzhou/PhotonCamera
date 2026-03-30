.class final Lbww;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbwx;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lubo;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lbwx;Ljava/lang/Object;Lubo;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbww;->a:Lbwx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lbww;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lbww;->c:Lubo;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lbww;->d:I

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

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    or-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, p0, p1, p2}, Lbwx;->e(Ljava/lang/Object;Lubo;Lblm;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {p2}, Lbpd;->a(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lbww;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lbww;->c:Lubo;

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

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    check-cast p2, Ljava/lang/Number;

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

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iget p2, p0, Lbww;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lbww;->a:Lbwx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
