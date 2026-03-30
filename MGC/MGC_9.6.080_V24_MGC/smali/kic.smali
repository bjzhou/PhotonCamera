.class public final Lkic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgn;


# instance fields
.field public final synthetic a:Lkid;


# direct methods
.method public constructor <init>(Lkid;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkic;->a:Lkid;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

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

    :goto_1
    invoke-direct {v0, p0, p1, v1}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lkbu;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkid;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    iget-object p0, p0, Lkic;->a:Lkid;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "DBG closing sink"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object p0, p0, Lkic;->a:Lkid;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkid;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_10
    iget-object v0, p0, Lkic;->a:Lkid;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1}, Lkib;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lkib;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_4

    nop

    nop
.end method
