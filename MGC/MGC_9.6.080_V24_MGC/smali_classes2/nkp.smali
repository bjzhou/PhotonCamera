.class public final Lnkp;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lnkk;

.field final synthetic b:F

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lnkk;FI)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lnkp;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lnkp;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnkp;->a:Lnkk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p0, p1, v0}, Lnzk;->aq(Lnkk;FLblm;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lnkp;->c:I

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

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lblm;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    or-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget-object p2, p0, Lnkp;->a:Lnkk;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lnkp;->b:F

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

    :goto_9
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lbpd;->a(I)I

    move-result v0

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
