.class public final Llqu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Llqu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llqu;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Loft;

    invoke-direct {v0, p1}, Loft;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lofs;

    invoke-direct {v0, p1}, Lofs;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lofp;

    invoke-direct {v0, p1}, Lofp;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lofo;

    invoke-direct {v0, p1}, Lofo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lofn;

    invoke-direct {v0, p1}, Lofn;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lofm;

    invoke-direct {v0, p1}, Lofm;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lofl;

    invoke-direct {v0, p1}, Lofl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_6
    sget-object v0, Lofj;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lofj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lofj;

    invoke-direct {v1}, Lofj;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Lofj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lofj;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p1}, Lofk;->b(Landroid/os/Parcel;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_7
    sget-object v0, Lofk;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lofk;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lofk;

    invoke-direct {v1}, Lofk;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v1, Lofk;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lofk;

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1, p1}, Lofk;->b(Landroid/os/Parcel;)V

    return-object v1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_8
    new-instance v0, Lofh;

    invoke-direct {v0, p1}, Lofh;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lofg;

    invoke-direct {v0, p1}, Lofg;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_a
    new-instance v0, Loff;

    invoke-direct {v0, p1}, Loff;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lmgo;

    invoke-direct {v0, p1}, Lmgo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/barhopper/Barcode$WiFi;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$WiFi-IA;)V

    return-object v0

    :pswitch_d
    new-instance v0, Llqv;

    invoke-direct {v0, p1}, Llqv;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Llqu;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Loft;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lofs;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lofp;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lofo;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lofn;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lofm;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lofl;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lofj;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lofk;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lofh;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lofg;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Loff;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lmgo;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Llqv;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
