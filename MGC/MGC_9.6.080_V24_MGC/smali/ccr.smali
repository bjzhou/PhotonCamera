.class final Lccr;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lucs;

.field final synthetic b:Lccs;


# direct methods
.method public constructor <init>(Lucs;Lccs;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lccr;->a:Lucs;

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lccr;->b:Lccs;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lccs;->f()Lccf;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lccr;->b:Lccs;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object v0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lccr;->a:Lucs;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
