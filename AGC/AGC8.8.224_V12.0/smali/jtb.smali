.class public final Ljtb;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljsy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljsy;-><init>(I)V

    sput-object v0, Ljtb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljtb;->a:I

    iput p2, p0, Ljtb;->b:I

    iput-object p3, p0, Ljtb;->c:[B

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Ljtb;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Ljtb;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v0, p0, Ljtb;->c:[B

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->j(Landroid/os/Parcel;I[B)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
