.class final Lcqb;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbzz;

.field final synthetic b:Lubo;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lbzz;Lubo;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lcqb;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
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

    :goto_4
    iput-object p2, p0, Lcqb;->b:Lubo;

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

    :goto_5
    iput-object p1, p0, Lcqb;->a:Lbzz;

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    or-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p2}, Lbpd;->a(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0, p1, p2}, Lcqe;->b(Lbzz;Lubo;Lblm;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget p2, p0, Lcqb;->c:I

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

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcqb;->b:Lubo;

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

    :goto_8
    check-cast p1, Lblm;

    nop

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

    :goto_9
    iget-object v0, p0, Lcqb;->a:Lbzz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
