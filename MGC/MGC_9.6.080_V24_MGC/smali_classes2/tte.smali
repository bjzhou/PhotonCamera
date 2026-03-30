.class final Ltte;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ltte;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltth;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lttc;->a:Ljava/util/ArrayDeque;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    new-instance v0, Lttc;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lttc;-><init>()V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v0, Lttc;->a:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lttc;

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ltth;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lttj;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lttf;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Lttg;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lttm;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Ltte;->a:I

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Lttl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Lttl;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    new-instance p0, Lttm;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ltti;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    new-instance p0, Lttg;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Lttj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lttc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_13

    nop

    nop

    :goto_15
    new-instance p0, Lttf;

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

    nop

    :goto_16
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :goto_19
    new-instance p0, Ltti;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Lttd;->b(Landroid/os/Parcel;)V

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltte;->a:I

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    :goto_2
    new-array p0, p1, [Lttm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    new-array p0, p1, [Lttj;

    nop

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_b

    nop

    nop

    :goto_5
    new-array p0, p1, [Lttc;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array p0, p1, [Lttf;

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

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_a

    nop

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

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_a
    new-array p0, p1, [Lttl;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array p0, p1, [Ltti;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    new-array p0, p1, [Lttg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array p0, p1, [Ltth;

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

    :goto_10
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_6

    nop

    nop
.end method
