.class Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    invoke-direct {v0, p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    return-object p1
.end method
