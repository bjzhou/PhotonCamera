.class public final synthetic Ljpc;
.super Ljava/lang/Object;

# interfaces
.implements Ljfh;


# static fields
.field public static final synthetic a:Ljpc;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljpc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljpc;-><init>(I)V

    sput-object v0, Ljpc;->a:Ljpc;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljpc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Ljpc;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljmz;

    new-instance v0, Ljmh;

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljmh;-><init>(JIZLjava/lang/String;Ljlx;)V

    iget-object v2, p1, Ljgb;->c:Landroid/content/Context;

    sget-object v2, Ljmc;->f:Ljca;

    invoke-virtual {p1, v2}, Ljmz;->I(Ljca;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljmp;

    new-instance v2, Ljmq;

    check-cast p2, Lkgd;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, v1, v1}, Ljmq;-><init>(Lkgd;I[B[B)V

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {p2, v2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0x52

    invoke-virtual {p1, v0, p2}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void

    :pswitch_0
    check-cast p1, Ljpt;

    new-instance v0, Ljpd;

    check-cast p2, Lkgd;

    invoke-direct {v0, p2, v1, v1}, Ljpd;-><init>(Lkgd;[B[B)V

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljpo;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljmp;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    check-cast p2, Lkgd;

    invoke-virtual {p2, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
