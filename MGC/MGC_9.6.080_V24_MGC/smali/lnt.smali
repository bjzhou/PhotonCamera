.class public final synthetic Llnt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lhoh;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Llnt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Llnt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final a(Linb;Lcom/google/googlex/gcam/GrayImageS16;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Limo;->close()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lsbm;->a:Lryh;

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Llii;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Llko;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, p1, v1}, Lioy;->b(IILryh;)Lioy;

    move-result-object p1

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Llii;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Linb;->p:Lioy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x12

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

    :goto_14
    goto :goto_10

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Llnt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, p0, p1}, Limm;->d(Llko;Lioy;)Limo;

    move-result-object p0

    nop

    nop

    :try_start_0
    sget p1, Lryb;->d:I

    nop

    nop

    nop

    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2, p3, p1}, Limo;->d(Lcom/google/googlex/gcam/GrayImageS16;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p0}, Limo;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Limm;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p1

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
