.class public final synthetic Ljqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqt;


# instance fields
.field public final synthetic a:Ljql;

.field public final synthetic b:Lsuu;


# direct methods
.method public synthetic constructor <init>(Ljql;Lsuu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljqj;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Ljqj;->a:Ljql;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Loqy;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljqj;->a:Ljql;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_6
    const-string v2, "getCurrentLocation meet exception!"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Ljql;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v1, p0, Ljql;->g:J

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    const v1, 0x6

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

    :goto_b
    const/16 v3, 0x9df

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljql;->d(Landroid/location/Location;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iput-object p1, p0, Ljql;->f:Landroid/location/Location;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-static {v2, v3, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    :try_start_0
    invoke-virtual {p1}, Loqy;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Landroid/location/Location;

    nop

    nop

    nop
    :try_end_0
    .catch Loqx; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ljqj;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
