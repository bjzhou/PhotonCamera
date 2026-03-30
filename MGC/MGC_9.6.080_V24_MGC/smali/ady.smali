.class public final Lady;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lads;

.field final synthetic b:Ladi;


# direct methods
.method public constructor <init>(Lads;Ladi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lady;->a:Lads;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lady;->b:Ladi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lady;->a:Lads;

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

    :goto_1
    invoke-direct {p1, v0, p0}, Ladx;-><init>(Lads;Ladi;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lbmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object p0, p0, Lady;->b:Ladi;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    :goto_5
    new-instance p1, Ladx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
