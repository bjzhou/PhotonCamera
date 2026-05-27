.class public final Ljcn;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljcn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljcn;->a:Ljava/lang/String;

    iput-boolean p2, p0, Ljcn;->b:Z

    iput-boolean p3, p0, Ljcn;->c:Z

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Ljig;

    if-eqz p2, :cond_1

    check-cast p1, Ljig;

    goto :goto_0

    :cond_1
    new-instance p1, Ljie;

    invoke-direct {p1, p4}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {p1}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Ljcn;->f:Landroid/content/Context;

    iput-boolean p5, p0, Ljcn;->d:Z

    iput-boolean p6, p0, Ljcn;->e:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Ljcn;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Ljcn;->b:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljcn;->c:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Ljcn;->f:Landroid/content/Context;

    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-boolean v0, p0, Ljcn;->d:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljcn;->e:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
