.class public final synthetic Lolo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lojf;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lolo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lolo;->b:I

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
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lolo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0, p2}, Lfum;->B(ILandroid/os/Parcel;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_3
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_59

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

    nop

    :goto_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, p0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p2, v2}, Lovp;-><init>(Lpic;I)V

    goto/32 :goto_48

    nop

    nop

    :goto_a
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0, v1, v0}, Lorz;->I(Lort;Lort;Loia;)V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    check-cast p1, Lofp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, p2}, Lork;-><init>(Lohe;Lpic;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p2}, Lofl;-><init>(Lpic;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p2, v2}, Lort;-><init>(Lpic;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lovp;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lort;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p2, Lpic;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    invoke-direct {v0, p2, v2}, Lort;-><init>(Lpic;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    const/16 p0, 0x8

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

    :goto_21
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lohe;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_54

    nop

    :goto_24
    invoke-static {p2, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_37

    nop

    nop

    :goto_25
    check-cast p1, Loln;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lofl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p2, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p2, Lpic;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v2, v0}, Lfum;->B(ILandroid/os/Parcel;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Loro;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_31
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lovv;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    nop

    const/16 p1, 0xfa2

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, p0}, Loia;->c(Ljava/lang/Object;)V

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v1}, Lovv;->m()V

    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    check-cast p1, Louw;

    nop

    nop

    nop

    new-instance v3, Louy;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p2, p0, v0}, Louy;-><init>(Ljava/util/Map;Ljava/lang/Object;Loia;)V

    new-instance p0, Lovj;

    nop

    nop

    invoke-direct {p0, v1}, Lovj;-><init>(Louv;)V

    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    invoke-static {p2, v3}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p2, p0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p0, 0x11

    nop

    invoke-virtual {p1, p0, p2}, Lfum;->A(ILandroid/os/Parcel;)V

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Lovu;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    check-cast p2, Lpic;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p2, Lpic;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

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

    nop

    :goto_38
    check-cast p1, Loqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p2, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Lolr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p2, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3d
    check-cast p1, Lopz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, p0, p2}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Loro;->b:Lort;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_40
    iget-object p0, p0, Lolo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_41
    check-cast p1, Lofs;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_42
    invoke-static {v0, p0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Loqa;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_46
    const/16 p0, 0x1f

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_47
    check-cast p1, Lopz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_48
    iget-object p2, p1, Lovu;->t:Lpic;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v0, v3, :cond_6

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lohe;->d:Logy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v0, p0}, Lopz;->e(Lort;Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :goto_4f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_50
    const v1, 0x2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, p2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v3, 0x2

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

    :goto_53
    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_54
    goto/32 :goto_4f

    nop

    nop

    :goto_55
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p1, Lorz;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2, v1}, Lpic;->t(Ljava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_59
    check-cast p0, Ltis;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_5a
    new-instance v0, Lork;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5b
    new-instance v0, Lort;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5c
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method
