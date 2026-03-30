.class final Lrns;
.super Lrnm;
.source "PG"


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lrnu;


# direct methods
.method public constructor <init>(Lrnu;Landroid/os/IBinder;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrnm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p2, p0, Lrns;->a:Landroid/os/IBinder;

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_3
    iput-object p1, p0, Lrns;->b:Lrnu;

    nop

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
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    move-object v2, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    const-string v3, "linkToDeath failed"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lrnv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lrnv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lrnv;->d(Lrnv;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    move-object v3, v1

    nop

    nop

    nop

    check-cast v3, Lrnv;

    nop

    nop

    iget-object v3, v3, Lrnv;->l:Landroid/os/IInterface;

    nop

    nop

    nop

    check-cast v3, Lfum;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfum;->a:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrnv;

    nop

    nop

    iget-object v1, v1, Lrnv;->i:Landroid/os/IBinder$DeathRecipient;

    nop

    invoke-interface {v3, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lrns;->b:Lrnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lrns;->b:Lrnu;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lrnv;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    check-cast v0, Lrnv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    :goto_18
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    move-object v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3a

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lrns;->a:Landroid/os/IBinder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    instance-of v2, v1, Lrnc;

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

    :goto_1f
    iget-object v1, p0, Lrns;->b:Lrnu;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_20
    new-instance v1, Lrnc;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    invoke-direct {v1, v0}, Lrnc;-><init>(Landroid/os/IBinder;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_30

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_28
    check-cast v2, Lrnv;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_29
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

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

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v2, Lrnv;->m:Lrpz;

    nop

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

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_2d
    check-cast v0, Lrnc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, v1, v3, v0}, Lrpz;->j(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_30
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    iput-object v0, v2, Lrnv;->l:Landroid/os/IInterface;

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

    :goto_32
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, v0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    iget-object v1, v1, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_39
    move-object v0, v1

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lrns;->b:Lrnu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v1, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop
.end method
