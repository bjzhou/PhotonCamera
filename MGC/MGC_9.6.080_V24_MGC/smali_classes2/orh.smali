.class public final synthetic Lorh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lojf;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lorh;->b:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lorh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lorh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lorh;->d:I

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
.end method

.method public synthetic constructor <init>(Losk;Loiz;[Landroid/content/IntentFilter;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lorh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lorh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p4, p0, Lorh;->d:I

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lorh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lovp;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p2, Lpic;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    iget-object p2, p1, Lovu;->t:Lpic;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lorh;->d:I

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9
    check-cast v1, Loiz;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lort;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v1}, Lovv;-><init>([Landroid/content/IntentFilter;)V

    goto/32 :goto_45

    nop

    nop

    :goto_c
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

    :goto_d
    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_f
    iget-object p2, p0, Lorh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lopz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, [Landroid/content/IntentFilter;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lorh;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p2, v1}, Lovp;-><init>(Lpic;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p2, Lpic;->a:Ljava/lang/Object;

    nop

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    const/16 p1, 0xfa1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, p0}, Loia;->c(Ljava/lang/Object;)V

    monitor-exit v3

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    iget-object v1, p2, Lpic;->a:Ljava/lang/Object;

    nop

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    check-cast p1, Louw;

    nop

    nop

    new-instance v1, Loux;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    invoke-direct {v1, v4, p0, v0}, Loux;-><init>(Ljava/util/Map;Ljava/lang/Object;Loia;)V

    new-instance v0, Lost;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lost;-><init>(Lovv;)V

    invoke-virtual {p1, v1, v0}, Louw;->e(Lous;Lost;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    nop

    nop

    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lpic;->a:Ljava/lang/Object;

    nop

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3b

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, v0, v1}, Lort;-><init>(Loiz;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_29

    nop

    nop

    :goto_1b
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    check-cast p2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p2, Lpic;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lorh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lovu;

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

    :goto_20
    invoke-virtual {p1, p0, v2}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lorh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    check-cast v0, Loiz;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p2, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lorj;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    iget-object v1, p0, Lorh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lorh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    new-instance v2, Lovv;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lort;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lorh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2f
    const v0, 0x15

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lorh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    iput-object v1, v2, Lovv;->a:Loiz;

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

    :goto_32
    check-cast v0, Lohe;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_34
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Loqa;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v1, v0, p2, v2}, Lorj;-><init>(Lohe;Lpic;Lort;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3e
    const-string v3, "__internal.external_ids#"

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_40
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p0, v2, v1}, Lorz;->I(Lort;Lort;Loia;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_42
    invoke-direct {v0, p2, v2}, Lort;-><init>(Lpic;I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lort;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_45
    iget-object v1, p0, Lorh;->c:Ljava/lang/Object;

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

    :goto_46
    check-cast p2, Lpic;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p1, Lorz;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method
