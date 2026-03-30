.class public final Lrpi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lrpe;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lrpe;Ljava/util/concurrent/Callable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrpi;->a:Lrpe;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lrpi;->b:Ljava/util/concurrent/Callable;

    nop

    nop

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


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lror;->a()Lrpd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lror;->c(Lrpd;Lrpe;)Lrpe;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrpi;->b:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lrpi;->a:Lrpe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    invoke-static {v0, v1}, Lror;->c(Lrpd;Lrpe;)Lrpe;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Lrok;->a(Ljava/lang/Throwable;)V

    throw p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lror;->c(Lrpd;Lrpe;)Lrpe;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrpi;->b:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    const-string p0, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    sget-object v1, Landroidx/wear/widget/xrA/fuyPMnCeXU;->fWwXW:Ljava/lang/String;

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

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
