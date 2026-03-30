.class final Ladq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lads;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lads;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ladq;->b:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ladq;->a:Lads;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p3, p0, Ladq;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static FSzZqIVoCbdHhAwK(Ljava/lang/Number;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RteGdgYdzJriwTxQ(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lbpd;->a(I)I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static lkkSBpxZQLfwZFOV(Lads;Ljava/lang/Object;Lblm;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lads;->g(Ljava/lang/Object;Lblm;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {v0, p0, p1, p2}, Ladq;->lkkSBpxZQLfwZFOV(Lads;Ljava/lang/Object;Lblm;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    iget p2, p0, Ladq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object p0, p0, Ladq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lblm;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-static {p2}, Ladq;->RteGdgYdzJriwTxQ(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    or-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ladq;->a:Lads;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Ladq;->FSzZqIVoCbdHhAwK(Ljava/lang/Number;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
