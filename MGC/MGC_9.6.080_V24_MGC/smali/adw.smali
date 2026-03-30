.class public final Ladw;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lads;

.field final synthetic b:Lads;


# direct methods
.method public constructor <init>(Lads;Lads;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ladw;->b:Lads;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ladw;->a:Lads;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BgWvsYlolzeirlXU(Lbyl;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lbyl;->add(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lbmw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ladw;->b:Lads;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ladv;

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

    :goto_3
    iget-object p1, p0, Ladw;->a:Lads;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iget-object v0, p0, Ladw;->a:Lads;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    :goto_6
    invoke-static {p1, v0}, Ladw;->BgWvsYlolzeirlXU(Lbyl;Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Lads;->d:Lbyl;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Ladw;->b:Lads;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-direct {p1, v0, p0}, Ladv;-><init>(Lads;Lads;)V

    goto/32 :goto_5

    nop

    nop
.end method
