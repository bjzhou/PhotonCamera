.class public final Lksd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkru;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lkrv;)Lksf;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p1, p1, Lkrv;->b:Ljava/util/List;

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

    :goto_2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v0, "no-images"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lksf;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const-string v0, "cancelled"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-direct {p1, v0, p0}, Lksf;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-static {v0, p1, p0}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_5

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop
.end method
