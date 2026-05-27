.class public abstract Ljsg;
.super Lcbf;

# interfaces
.implements Ljsh;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sget-object p1, Ljta;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljta;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    goto/16 :goto_1

    :pswitch_2
    sget-object p1, Ljsr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljsr;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Ljsg;->e(Ljsr;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object p1, Ljrc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljrc;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object p1, Ljrd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljrd;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object p1, Ljsp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljsp;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IRpcResponseCallback"

    invoke-interface {p3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljsc;

    if-eqz v1, :cond_1

    move-object p3, v0

    check-cast p3, Ljsc;

    goto :goto_0

    :cond_1
    new-instance v0, Ljsc;

    invoke-direct {v0, p3}, Ljsc;-><init>(Landroid/os/IBinder;)V

    move-object p3, v0

    :goto_0
    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, p3}, Ljsg;->f(Ljsp;Ljsc;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object p1, Ljql;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljql;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->i()V

    goto/16 :goto_1

    :pswitch_7
    sget-object p1, Ljqv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljqv;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->g()V

    goto :goto_1

    :pswitch_8
    sget-object p1, Ljqx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljqx;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Ljsg;->b(Ljqx;)V

    goto :goto_1

    :pswitch_9
    sget-object p1, Ljqm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljqm;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->j()V

    goto :goto_1

    :pswitch_a
    sget-object p1, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->h()V

    goto :goto_1

    :pswitch_b
    sget-object p1, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljss;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->l()V

    goto :goto_1

    :pswitch_c
    sget-object p1, Ljss;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljss;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Ljsg;->k()V

    goto :goto_1

    :pswitch_d
    sget-object p1, Ljsp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljsp;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Ljsg;->d(Ljsp;)V

    goto :goto_1

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Ljsg;->c(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
