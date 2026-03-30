.class public final Lczn;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lczo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lczo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lczn;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lczn;->b:Lczo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

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
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lczm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lczn;->a:Landroid/content/Context;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lczn;->b:Lczo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    check-cast p1, Lbmw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, v0, p0}, Lczm;-><init>(Landroid/content/Context;Lczo;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lczn;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lczn;->b:Lczo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
