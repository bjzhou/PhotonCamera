.class public final synthetic Ljnq;
.super Ljava/lang/Object;

# interfaces
.implements Ljfh;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljnq;->a:Ljava/lang/String;

    iput p2, p0, Ljnq;->b:I

    iput-object p3, p0, Ljnq;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ljnq;->a:Ljava/lang/String;

    iget v1, p0, Ljnq;->b:I

    iget-object v2, p0, Ljnq;->c:[Ljava/lang/String;

    check-cast p1, Ljnv;

    new-instance v3, Ljnt;

    check-cast p2, Lkgd;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5, v5}, Ljnt;-><init>(Lkgd;I[B[B)V

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljnu;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
