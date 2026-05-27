.class public final Ljru;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:[Lcom/google/android/gms/wearable/ConnectionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljro;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljro;-><init>(I)V

    sput-object v0, Ljru;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljru;->a:I

    iput-object p2, p0, Ljru;->b:[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Ljru;->a:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljru;->b:[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
