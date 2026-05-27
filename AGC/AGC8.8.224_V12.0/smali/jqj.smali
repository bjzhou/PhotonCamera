.class public final Ljqj;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljsh;

.field public final b:[Landroid/content/IntentFilter;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljnd;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljnd;-><init>(I)V

    sput-object v0, Ljqj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljhn;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljsh;

    if-eqz v1, :cond_0

    check-cast v0, Ljsh;

    goto :goto_0

    :cond_0
    new-instance v0, Ljsf;

    invoke-direct {v0, p1}, Ljsf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v0, p0, Ljqj;->a:Ljsh;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ljqj;->a:Ljsh;

    :goto_1
    iput-object p2, p0, Ljqj;->b:[Landroid/content/IntentFilter;

    iput-object p3, p0, Ljqj;->c:Ljava/lang/String;

    iput-object p4, p0, Ljqj;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljtl;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljqj;->a:Ljsh;

    iget-object p1, p1, Ljtl;->b:[Landroid/content/IntentFilter;

    iput-object p1, p0, Ljqj;->b:[Landroid/content/IntentFilter;

    const/4 p1, 0x0

    iput-object p1, p0, Ljqj;->c:Ljava/lang/String;

    iput-object p1, p0, Ljqj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljqj;->a:Ljsh;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljsh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Ljqj;->b:[Landroid/content/IntentFilter;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Ljhp;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object p2, p0, Ljqj;->c:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object p2, p0, Ljqj;->d:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
