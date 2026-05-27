.class public final Ljsx;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public final b:Ljsh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljsy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljsy;-><init>(I)V

    sput-object v0, Ljsx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljsx;->a:I

    if-eqz p2, :cond_1

    const-string p1, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Ljsh;

    if-eqz v0, :cond_0

    check-cast p1, Ljsh;

    goto :goto_0

    :cond_0
    new-instance p1, Ljsf;

    invoke-direct {p1, p2}, Ljsf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p1, p0, Ljsx;->b:Ljsh;

    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljsh;)V
    .locals 1

    invoke-direct {p0}, Ljhn;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ljsx;->a:I

    iput-object p1, p0, Ljsx;->b:Ljsh;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Ljsx;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v0, p0, Ljsx;->b:Ljsh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljsh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
