.class final Lawi;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbxa;


# direct methods
.method public constructor <init>(Lbxa;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lawi;->a:Lbxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lawf;-><init>(Lbxa;Ljava/util/Map;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    sget-object v1, Ltyx;->a:Ltyx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lawf;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lawi;->a:Lbxa;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
