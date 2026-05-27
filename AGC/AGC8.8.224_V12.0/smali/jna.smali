.class public final Ljna;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Landroid/os/IBinder;

.field public final c:Landroid/os/IBinder;

.field public final d:Landroid/app/PendingIntent;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljhi;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljhi;-><init>(I)V

    sput-object v0, Ljna;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljna;->a:I

    iput-object p2, p0, Ljna;->b:Landroid/os/IBinder;

    iput-object p3, p0, Ljna;->c:Landroid/os/IBinder;

    iput-object p4, p0, Ljna;->d:Landroid/app/PendingIntent;

    iput-object p5, p0, Ljna;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/IInterface;Ljmg;Ljava/lang/String;)Ljna;
    .locals 7

    new-instance v6, Ljna;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    move-object v2, p0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljna;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Ljna;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljna;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Ljna;->c:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Ljna;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Ljna;->e:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
