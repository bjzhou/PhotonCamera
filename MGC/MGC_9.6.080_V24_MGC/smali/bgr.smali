.class final Lbgr;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Ldij;

.field final synthetic b:Lubo;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Ldij;Lubo;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbgr;->b:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lbgr;->a:Ldij;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lbgr;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget p2, p0, Lbgr;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbgr;->b:Lubo;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {v0, p0, p1, p2}, Lbgw;->a(Ldij;Lubo;Lblm;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lbgr;->a:Ldij;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-static {p2}, Lbpd;->a(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    or-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
