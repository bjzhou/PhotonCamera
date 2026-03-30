.class final Lodn;
.super Lodz;
.source "PG"


# instance fields
.field final synthetic a:Lodp;


# direct methods
.method public constructor <init>(Lodp;Lodm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lodz;-><init>(Lodm;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lodn;->a:Lodp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lodp;->b()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lodp;->D()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object p0, p0, Lodn;->a:Lodp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop
.end method
