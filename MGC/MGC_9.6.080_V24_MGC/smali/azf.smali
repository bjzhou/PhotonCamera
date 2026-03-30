.class final Lazf;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lazi;


# direct methods
.method public constructor <init>(Lazi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lazf;->a:Lazi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lazf;->a:Lazi;

    nop

    nop

    goto/32 :goto_e

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

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lazi;->h()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, v0, Lazc;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto :goto_5

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lazi;->j:Lazc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
