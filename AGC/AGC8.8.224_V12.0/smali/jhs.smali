.class public final synthetic Ljhs;
.super Ljava/lang/Object;

# interfaces
.implements Ljfh;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Ljhs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljbl;I)V
    .locals 0

    iput p2, p0, Ljhs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljde;I)V
    .locals 0

    iput p2, p0, Ljhs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljhl;I)V
    .locals 0

    iput p2, p0, Ljhs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljqb;I)V
    .locals 0

    iput p2, p0, Ljhs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhs;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Ljhs;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljhs;->a:Ljava/lang/Object;

    check-cast p1, Ljtk;

    new-instance v3, Ljte;

    check-cast p2, Lkgd;

    invoke-direct {v3, p2, v1, v2, v2}, Ljte;-><init>(Lkgd;I[B[B)V

    iget-object p2, p1, Ljtk;->a:Lkgd;

    iget-object v1, p2, Lkgd;->a:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ljhs;->a:Ljava/lang/Object;

    check-cast p1, Ljpt;

    new-instance v1, Ljpf;

    check-cast v0, Ljde;

    check-cast p2, Lkgd;

    invoke-direct {v1, v0, p2, v2, v2}, Ljpf;-><init>(Ljde;Lkgd;[B[B)V

    iget-object p2, v0, Ljde;->e:Ljcy;

    check-cast p2, Ljpi;

    iget-object p2, p2, Ljpi;->a:Ljnt;

    invoke-virtual {p1, p2, v2, v1}, Ljpt;->I(Ljnt;Ljnt;Ljed;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ljhs;->a:Ljava/lang/Object;

    check-cast p1, Ljnv;

    new-instance v1, Ljnt;

    check-cast p2, Lkgd;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3, v2, v2}, Ljnt;-><init>(Lkgd;I[B[B)V

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljnu;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljnu;->e(Ljnt;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ljhs;->a:Ljava/lang/Object;

    check-cast p1, Ljbq;

    new-instance v1, Ljbm;

    check-cast p2, Lkgd;

    invoke-direct {v1, p2, v2, v2}, Ljbm;-><init>(Lkgd;[B[B)V

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljbs;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p2, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Lcbe;->A(ILandroid/os/Parcel;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ljhs;->a:Ljava/lang/Object;

    check-cast p1, Ljhv;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljhr;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1, v3}, Lcbe;->A(ILandroid/os/Parcel;)V

    check-cast p2, Lkgd;

    invoke-virtual {p2, v2}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :goto_0
    :try_start_0
    iget-object v2, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljtl;

    if-nez v2, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0xfa2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v3, p1}, Ljed;->c(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {v2}, Ljtl;->m()V

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljsi;

    new-instance v4, Ljsk;

    iget-object p2, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-direct {v4, p2, v0, v3}, Ljsk;-><init>(Ljava/util/Map;Ljava/lang/Object;Ljed;)V

    new-instance p2, Ljsx;

    invoke-direct {p2, v2}, Ljsx;-><init>(Ljsh;)V

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, v4}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
