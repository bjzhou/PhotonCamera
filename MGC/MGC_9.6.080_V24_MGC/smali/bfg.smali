.class final Lbfg;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lubo;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lbfg;->a:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lbfg;->b:I

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

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    or-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lbfh;->b(Lubo;Lblm;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lbfg;->a:Lubo;

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

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lblm;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget p2, p0, Lbfg;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Lbpd;->a(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
