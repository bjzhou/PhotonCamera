.class public final Ljgg;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Ljca;

.field c:I

.field public d:Ljgh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljgg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Ljca;ILjgh;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljgg;->a:Landroid/os/Bundle;

    iput-object p2, p0, Ljgg;->b:[Ljca;

    iput p3, p0, Ljgg;->c:I

    iput-object p4, p0, Ljgg;->d:Ljgh;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljgg;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->i(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Ljgg;->b:[Ljca;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Ljgg;->c:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljgg;->d:Ljgh;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
