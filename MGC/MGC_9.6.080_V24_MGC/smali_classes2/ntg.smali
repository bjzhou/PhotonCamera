.class public final synthetic Lntg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqt;


# instance fields
.field public final synthetic a:Lsuu;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsuu;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lntg;->a:Lsuu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lntg;->b:Ljava/lang/String;

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

    nop
.end method


# virtual methods
.method public final a(Loqy;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lntg;->b:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lscz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x145c

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Fail to send message: %s"

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

    nop

    :goto_9
    iget-object v0, p0, Lntg;->a:Lsuu;

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Loqy;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Loqx; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-interface {v1, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lnti;->a:Lsdb;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lscz;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lnti;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
